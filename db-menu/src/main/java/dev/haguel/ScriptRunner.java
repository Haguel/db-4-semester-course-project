package dev.haguel;

import java.io.*;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.sql.*;
import java.util.*;
import java.util.stream.Collectors;

public class ScriptRunner {
    public static void main(String[] args) {
        // Database connection parameters
        String url = "jdbc:postgresql://localhost:5444/library";
        String user = "user";
        String password = "password";

        Connection conn = null;
        try {
            // Establish database connection
            conn = DriverManager.getConnection(url, user, password);
            System.out.println("Connected to PostgreSQL database successfully.");

            // Get all .sql resources from the classpath
            List<String> sqlResources = getSqlResources();

            if (sqlResources.isEmpty()) {
                System.out.println("No .sql resources found.");
                return;
            }

            Scanner scanner = new Scanner(System.in);
            while (true) {
                // Display menu
                displayMenu(sqlResources);
                int choice = getUserChoice(scanner);

                if (choice == 0) {
                    System.out.println("Exiting program.");
                    break;
                } else if (choice >= 1 && choice <= sqlResources.size()) {
                    String selectedScript = sqlResources.get(choice - 1);
                    System.out.println("\nExecuting: " + selectedScript);
                    executeScript(conn, selectedScript);
                    System.out.println("----- Script executed -----");
                } else {
                    System.out.println("Invalid choice. Please try again.");
                }
            }
        } catch (SQLException e) {
            System.out.println("Database error: " + e.getMessage());
        } catch (IOException e) {
            System.out.println("Resource error: " + e.getMessage());
        } finally {
            // Close connection
            if (conn != null) {
                try {
                    conn.close();
                    System.out.println("Database connection closed.");
                } catch (SQLException e) {
                    System.out.println("Error closing connection: " + e.getMessage());
                }
            }
        }
    }

    /** Gets all .sql resources from the classpath */
    private static List<String> getSqlResources() throws IOException {
        List<String> sqlFiles = new ArrayList<>();
        ClassLoader classLoader = ScriptRunner.class.getClassLoader();
        Enumeration<URL> resources = classLoader.getResources("");

        while (resources.hasMoreElements()) {
            URL resource = resources.nextElement();
            if (resource.getProtocol().equals("file")) {
                File dir = new File(resource.getFile());
                if (dir.isDirectory()) {
                    sqlFiles.addAll(findSqlFiles(dir, ""));
                }
            }
        }

        return sqlFiles.stream()
                .filter(s -> s.endsWith(".sql"))
                .sorted()
                .collect(Collectors.toList());
    }

    /** Recursively finds .sql files in the directory */
    private static List<String> findSqlFiles(File dir, String basePath) {
        List<String> sqlFiles = new ArrayList<>();
        File[] files = dir.listFiles();
        if (files != null) {
            for (File file : files) {
                String relativePath = basePath + file.getName();
                if (file.isDirectory()) {
                    sqlFiles.addAll(findSqlFiles(file, relativePath + "/"));
                } else if (file.getName().endsWith(".sql")) {
                    sqlFiles.add(relativePath);
                }
            }
        }

        return sqlFiles;
    }

    /** Displays the menu with script options */
    private static void displayMenu(List<String> scripts) {
        System.out.println("\nSelect a script to execute:");
        for (int i = 0; i < scripts.size(); i++) {
            System.out.println((i + 1) + ". " + scripts.get(i));
        }

        System.out.println("0. Exit");
    }

    /** Gets user's menu choice */
    private static int getUserChoice(Scanner scanner) {
        System.out.print("Enter your choice: ");
        try {
            return scanner.nextInt();
        } catch (InputMismatchException e) {
            scanner.next(); // Clear invalid input

            return -1; // Invalid choice
        }
    }

    /** Executes the selected SQL script from resources */
    private static void executeScript(Connection conn, String scriptPath) {
        try {
            // Read the script from resources
            InputStream is = ScriptRunner.class.getClassLoader().getResourceAsStream(scriptPath);
            if (is == null) {
                System.out.println("Script not found: " + scriptPath);
                return;
            }
            String script = new BufferedReader(new InputStreamReader(is, StandardCharsets.UTF_8))
                    .lines()
                    .collect(Collectors.joining("\n"));

            // Split script into statements
            List<String> statements = splitSqlStatements(script);
            System.out.println("Found " + statements.size() + " statements");
            try (Statement stmt = conn.createStatement()) {
                for (int i = 0; i < statements.size(); i++) {
                    String statement = statements.get(i).trim();
                    if (statement.isEmpty()) continue;

                    try {
                        System.out.println("Executing statement " + (i + 1) + " of " + statements.size());
                        boolean isResultSet = stmt.execute(statement);
                        if (isResultSet) {
                            try (ResultSet rs = stmt.getResultSet()) {
                                displayResultSet(rs);
                            }
                        } else {
                            int updateCount = stmt.getUpdateCount();
                            if (updateCount >= 0) {
                                System.out.println("Updated " + updateCount + " rows");
                            } else {
                                System.out.println("Executed successfully");
                            }
                        }
                    } catch (SQLException e) {
                        System.out.println("Error in statement " + (i + 1) + ": " + statement);
                        System.out.println("SQL Error: " + e.getMessage());
                    }
                }
            }
        } catch (SQLException e) {
            System.out.println("Error reading script: " + e.getMessage());
        }
    }

    /** Splits SQL script into individual statements */
    private static List<String> splitSqlStatements(String script) {
        List<String> statements = new ArrayList<>();
        StringBuilder currentStatement = new StringBuilder();
        boolean inSingleQuote = false;
        boolean inDoubleQuote = false;
        boolean inDollarQuote = false;
        String dollarTag = null;
        boolean inComment = false;

        for (int i = 0; i < script.length(); i++) {
            char c = script.charAt(i);

            // Handle comments
            if (!inSingleQuote && !inDoubleQuote && !inDollarQuote) {
                if (i + 1 < script.length() && c == '-' && script.charAt(i + 1) == '-') {
                    inComment = true;
                    i++; // Skip next '-'
                    continue;
                } else if (inComment && c == '\n') {
                    inComment = false;
                    continue;
                }
            }
            if (inComment) {
                continue;
            }

            currentStatement.append(c);

            if (c == '\'' && !inDoubleQuote && !inDollarQuote) {
                inSingleQuote = !inSingleQuote;
            } else if (c == '"' && !inSingleQuote && !inDollarQuote) {
                inDoubleQuote = !inDoubleQuote;
            } else if (c == '$' && !inSingleQuote && !inDoubleQuote) {
                int nextDollar = i + 1 < script.length() && script.charAt(i + 1) == '$' ? i + 1 : script.indexOf('$', i + 1);
                if (nextDollar != -1) {
                    String potentialTag = i + 1 == nextDollar ? "" : script.substring(i + 1, nextDollar);
                    if (inDollarQuote) {
                        if (potentialTag.equals(dollarTag)) {
                            inDollarQuote = false;
                            dollarTag = null;
                            i = nextDollar;
                        }
                    } else {
                        inDollarQuote = true;
                        dollarTag = potentialTag;
                        i = nextDollar;
                    }
                }
            } else if (c == ';' && !inSingleQuote && !inDoubleQuote && !inDollarQuote) {
                statements.add(currentStatement.toString().trim());
                currentStatement.setLength(0);
            }
        }

        // Add the last statement if it exists
        if (currentStatement.length() > 0) {
            String lastStatement = currentStatement.toString().trim();
            if (!lastStatement.isEmpty()) {
                statements.add(lastStatement);
            }
        }

        return statements;
    }

    /** Displays the result set from a SELECT query */
    private static void displayResultSet(ResultSet rs) throws SQLException {
        ResultSetMetaData metaData = rs.getMetaData();
        int columnCount = metaData.getColumnCount();

        // Collect data and calculate max widths
        List<String> headers = new ArrayList<>();
        List<Integer> maxWidths = new ArrayList<>();
        List<List<String>> rows = new ArrayList<>();

        // Initialize headers and max widths
        for (int i = 1; i <= columnCount; i++) {
            String header = metaData.getColumnName(i);
            headers.add(header);
            maxWidths.add(header.length());
        }

        // Collect rows and update max widths
        while (rs.next()) {
            List<String> row = new ArrayList<>();
            for (int i = 1; i <= columnCount; i++) {
                Object value = rs.getObject(i);
                String strValue = value != null ? value.toString() : "NULL";
                row.add(strValue);
                maxWidths.set(i - 1, Math.max(maxWidths.get(i - 1), strValue.length()));
            }

            rows.add(row);
        }

        // Print table
        // Header line
        StringBuilder headerLine = new StringBuilder("|");
        StringBuilder separatorLine = new StringBuilder("+");
        for (int i = 0; i < columnCount; i++) {
            headerLine.append(" ").append(String.format("%-" + maxWidths.get(i) + "s", headers.get(i))).append(" |");
            separatorLine.append("-".repeat(maxWidths.get(i) + 2)).append("+");
        }
        System.out.println(separatorLine);
        System.out.println(headerLine);
        System.out.println(separatorLine);

        // Data rows
        for (List<String> row : rows) {
            StringBuilder rowLine = new StringBuilder("|");
            for (int i = 0; i < columnCount; i++) {
                rowLine.append(" ").append(String.format("%-" + maxWidths.get(i) + "s", row.get(i))).append(" |");
            }
            System.out.println(rowLine);
        }

        // Bottom border
        System.out.println(separatorLine);
    }
}