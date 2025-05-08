    BEGIN;

    INSERT INTO categories (name)
    VALUES
        ('Science Fiction'),
        ('Fantasy'),
        ('Mystery'),
        ('Biography'),
        ('History'),
        ('Children'),
        ('Romance'),
        ('Horror'),
        ('Philosophy'),
        ('Self-help');

    INSERT INTO publishers (name, address)
    VALUES
        ('HarperCollins', '195 Broadway, New York, NY 10007, USA'),
        ('Penguin Random House', '1745 Broadway, New York, NY 10019, USA'),
        ('Simon & Schuster', '1230 Avenue of the Americas, New York, NY 10020, USA'),
        ('Bloomsbury Publishing', '50 Bedford Square, London WC1B 3DP, UK'),
        ('Oxford University Press', 'Great Clarendon Street, Oxford OX2 6DP, UK'),
        ('Macmillan Publishers', '120 Broadway, New York, NY 10271, USA'),
        ('Scholastic Corporation', '557 Broadway, New York, NY 10012, USA'),
        ('Hachette Book Group', '1290 Avenue of the Americas, New York, NY 10104, USA'),
        ('Crown Publishing Group', '1745 Broadway, New York, NY 10019, USA'),
        ('Knopf Doubleday Publishing Group', '1745 Broadway, New York, NY 10019, USA');

    INSERT INTO branches (name, location)
    VALUES
        ('Central Library', '100 Main St, Springfield, IL, USA'),
        ('Westside Branch', '200 West Ave, Springfield, IL, USA'),
        ('Eastside Branch', '300 East St, Springfield, IL, USA'),
        ('North Branch', '400 North Rd, Springfield, IL, USA'),
        ('South Branch', '500 South Blvd, Springfield, IL, USA'),
        ('Uptown Branch', '600 Uptown Ave, Springfield, IL, USA'),
        ('Downtown Branch', '700 Downtown Pl, Springfield, IL, USA'),
        ('Greenfield Branch', '800 Greenfield Dr, Springfield, IL, USA'),
        ('Lakeside Branch', '900 Lakeside Ln, Springfield, IL, USA'),
        ('Hilltop Branch', '1000 Hilltop Way, Springfield, IL, USA');

    INSERT INTO books (isbn, title, publisher_id, year_published, category_id, branch_id, available_copies)
    VALUES
        ('9780451524935', '1984', 1, 1949, 1, 1, 12),
        ('9780439139601', 'Harry Potter and the Goblet of Fire', 7, 2000, 2, 2, 10),
        ('9780061120084', 'To Kill a Mockingbird', 1, 1960, 5, 3, 8),
        ('9781400078776', 'The Book Thief', 10, 2005, 5, 4, 7),
        ('9780679783268', 'Pride and Prejudice', 9, 1813, 7, 5, 11),
        ('9780765326355', 'The Way of Kings', 4, 2010, 2, 6, 9),
        ('9780743273565', 'The Great Gatsby', 2, 1925, 7, 7, 13),
        ('9780307277671', 'The Road', 10, 2006, 1, 8, 4),
        ('9780142407332', 'The Outsiders', 2, 1967, 5, 9, 8),
        ('9780553296983', 'Dune', 1, 1965, 1, 10, 6),
        ('9780060850524', 'Fahrenheit 451', 1, 1953, 1, 1, 5),
        ('9780316769488', 'The Catcher in the Rye', 5, 1951, 5, 2, 10),
        ('9780141439600', 'Jane Eyre', 2, 1847, 7, 3, 7),
        ('9781594200099', 'Blink: The Power of Thinking Without Thinking', 3, 2005, 10, 4, 3),
        ('9780439136358', 'Harry Potter and the Prisoner of Azkaban', 7, 1999, 2, 5, 6),
        ('9780767910386', 'Into the Wild', 6, 1996, 9, 6, 4),
        ('9780140283334', 'The Alchemist', 2, 1988, 9, 7, 10),
        ('9780679732761', 'Beloved', 5, 1987, 5, 8, 9),
        ('9780385754729', 'Looking for Alaska', 4, 2005, 6, 9, 4),
        ('9780142415436', 'Paper Towns', 2, 2008, 6, 10, 5),
        ('9780307474278', 'Night', 8, 1956, 5, 1, 5),
        ('9780143127741', 'Educated', 2, 2018, 4, 2, 7),
        ('9780804139298', 'Thinking, Fast and Slow', 9, 2011, 10, 3, 9),
        ('9780525555379', 'Where the Crawdads Sing', 3, 2018, 7, 4, 8),
        ('9780131103627', 'The C Programming Language', 5, 1988, 9, 5, 3),
        ('9780452284234', 'Freakonomics', 4, 2005, 10, 6, 6),
        ('9780451526342', 'Brave New World', 1, 1932, 1, 7, 4),
        ('9780143039433', 'Atlas Shrugged', 2, 1957, 9, 8, 7),
        ('9780385490818', 'Angela’s Ashes', 6, 1996, 4, 9, 5),
        ('9780141036137', 'Animal Farm', 1, 1945, 1, 10, 13),
        ('9780062316097', 'Big Little Lies', 8, 2014, 3, 1, 7),
        ('9780385533225', 'The Goldfinch', 9, 2013, 5, 2, 9),
        ('9780062457714', 'The Sun Is Also a Star', 10, 2016, 6, 3, 8),
        ('9781524763138', 'Becoming', 1, 2018, 4, 4, 6),
        ('9780062024039', 'Divergent', 7, 2011, 2, 5, 10),
        ('9780385534246', 'Gone Girl', 5, 2012, 3, 6, 9),
        ('9780062316110', 'The Husband’s Secret', 8, 2013, 3, 7, 11),
        ('9780451529053', 'Lord of the Flies', 1, 1954, 6, 8, 6),
        ('9781101904220', 'Station Eleven', 4, 2014, 1, 9, 8),
        ('9780316176486', 'The Maze Runner', 5, 2009, 2, 10, 7),
        ('9780060853983', 'Never Let Me Go', 1, 2005, 1, 2, 5),
        ('9780307949486', 'The Power of Habit', 2, 2012, 10, 3, 12),
        ('9780446547605', 'The Shack', 8, 2007, 7, 4, 4),
        ('9780385486804', 'The Secret', 8, 2006, 10, 5, 5),
        ('9780316805062', 'The Girl With the Dragon Tattoo', 7, 2005, 3, 6, 8),
        ('9780451205765', 'Darkness Visible', 5, 1990, 9, 7, 2),
        ('9780060731328', 'Twilight', 8, 2005, 2, 8, 11),
        ('9780061122415', 'To All the Boys I’ve Loved Before', 1, 2014, 6, 9, 7),
        ('9780000000001', 'Shadow Over the Valley', 1, 2001, 1, 1, 8),
        ('9780000000002', 'Quest for the Lost Relic', 2, 2002, 2, 2, 7),
        ('9780000000003', 'Midnight Whispers', 3, 2003, 3, 3, 5),
        ('9780000000004', 'Inside the Mind: A Biography', 4, 2004, 4, 4, 6),
        ('9780000000005', 'Paths of Time', 5, 2005, 5, 5, 9),
        ('9780000000006', 'Children of the Sky', 6, 2006, 6, 6, 11),
        ('9780000000007', 'Hearts Entwined', 7, 2007, 7, 7, 13),
        ('9780000000008', 'Nightmare Alley', 8, 2008, 8, 8, 10),
        ('9780000000009', 'Thinking About the World', 9, 2009, 9, 9, 4),
        ('9780000000010', 'Success Habits', 10, 2010, 10, 10, 7),
        ('9780000000011', 'Stars Above Us', 1, 2011, 1, 2, 9),
        ('9780000000012', 'Forest of Magic', 2, 2012, 2, 3, 10),
        ('9780000000013', 'The Disappearance Case', 3, 2013, 3, 4, 11),
        ('9780000000014', 'Best of Times', 4, 2014, 4, 5, 12),
        ('9780000000015', 'Empires Rise', 5, 2015, 5, 6, 8),
        ('9780000000016', 'Stories for Children', 6, 2016, 6, 7, 6),
        ('9780000000017', 'Romance in Spring', 7, 2017, 7, 8, 12),
        ('9780000000018', 'House of Horrors', 8, 2018, 8, 9, 8),
        ('9780000000019', 'Logic for Life', 9, 2019, 9, 10, 7),
        ('9780000000020', 'Guided Self', 10, 2020, 10, 1, 10),
        ('9780000000021', 'Galactic Crossing', 1, 2021, 1, 3, 14),
        ('9780000000022', 'The Silver Wand', 2, 2022, 2, 4, 5),
        ('9780000000023', 'Curse of the Emerald', 3, 2023, 3, 5, 7),
        ('9780000000024', 'Pioneers: Biographies', 4, 1995, 4, 6, 4),
        ('9780000000025', 'Past Echoes', 5, 1996, 5, 7, 3),
        ('9780000000026', 'Dragon Tales', 6, 1997, 6, 8, 15),
        ('9780000000027', 'Summer Embrace', 7, 1998, 7, 9, 6),
        ('9780000000028', 'Haunted Library', 8, 1999, 8, 10, 4),
        ('9780000000029', 'Truth in Thought', 9, 2000, 9, 1, 9),
        ('9780000000030', 'You Can!', 10, 2001, 10, 2, 5),
        ('9780000000031', 'Dream Engines', 1, 2002, 1, 4, 13),
        ('9780000000032', 'Serpent Queen', 2, 2003, 2, 5, 11),
        ('9780000000033', 'Death on High Street', 3, 2004, 3, 6, 7),
        ('9780000000034', 'Inspiring Lives', 4, 2005, 4, 7, 6),
        ('9780000000035', 'Chronicles Unfold', 5, 2006, 5, 8, 5),
        ('9780000000036', 'Zoo Adventures', 6, 2007, 6, 9, 10),
        ('9780000000037', 'Paris Affair', 7, 2008, 7, 10, 8),
        ('9780000000038', 'Last Scream', 8, 2009, 8, 1, 9),
        ('9780000000039', 'Chains of Reason', 9, 2010, 9, 2, 12),
        ('9780000000040', 'Success Skills', 10, 2011, 10, 3, 13),
        ('9780000000041', 'Earthrise', 1, 2012, 1, 5, 7),
        ('9780000000042', 'Enchanted Woods', 2, 2013, 2, 6, 6),
        ('9780000000043', 'The Final Puzzle', 3, 2014, 3, 7, 3),
        ('9780000000044', 'Inventors: Biographies', 4, 2015, 4, 8, 7),
        ('9780000000045', 'Rewriting History', 5, 2016, 5, 9, 8),
        ('9780000000046', 'Castle of Dreams', 6, 2017, 6, 10, 10),
        ('9780000000047', 'Lakeside Love', 7, 2018, 7, 1, 15),
        ('9780000000048', 'Dark Shadows', 8, 2019, 8, 2, 7),
        ('9780000000049', 'Human Nature', 9, 2020, 9, 3, 5),
        ('9780000000050', 'The Leader Within', 10, 2021, 10, 4, 13),
        ('9780000000051', 'Infinity Edge', 1, 2022, 1, 6, 9),
        ('9780000000052', 'Wintergate', 2, 2023, 2, 7, 11),
        ('9780000000053', 'The Dagger Clue', 3, 1998, 3, 8, 4),
        ('9780000000054', 'Unsung Heroes', 4, 1999, 4, 9, 5),
        ('9780000000055', 'Regal Ages', 5, 2000, 5, 10, 7),
        ('9780000000056', 'Moonlit Stories', 6, 2001, 6, 1, 13),
        ('9780000000057', 'Autumn Promises', 7, 2002, 7, 2, 6),
        ('9780000000058', 'The Crypt', 8, 2003, 8, 3, 8),
        ('9780000000059', 'Reasoned Ways', 9, 2004, 9, 4, 7),
        ('9780000000060', 'Living Well', 10, 2005, 10, 5, 8),
        ('9780000000061', 'Zero Gravity', 1, 2006, 1, 7, 9),
        ('9780000000062', 'Starlight', 2, 2007, 2, 8, 5),
        ('9780000000063', 'Missing Heir', 3, 2008, 3, 9, 10),
        ('9780000000064', 'History Makers', 4, 2009, 4, 10, 11),
        ('9780000000065', 'Shifting Sands', 5, 2010, 5, 1, 6),
        ('9780000000066', 'Wonder World', 6, 2011, 6, 2, 9),
        ('9780000000067', 'Love in Paris', 7, 2012, 7, 3, 11),
        ('9780000000068', 'Ghoul Nights', 8, 2013, 8, 4, 4),
        ('9780000000069', 'Epic Thoughts', 9, 2014, 9, 5, 6),
        ('9780000000070', 'Motivation Now', 10, 2015, 10, 6, 8),
        ('9780000000071', 'Cosmic Dust', 1, 2016, 1, 8, 12),
        ('9780000000072', 'Crown of Thorns', 2, 2017, 2, 9, 10),
        ('9780000000073', 'Shattered Mirror', 3, 2018, 3, 10, 11),
        ('9780000000074', 'Brave Biographies', 4, 2019, 4, 1, 8),
        ('9780000000075', 'History Unveiled', 5, 2020, 5, 2, 7),
        ('9780000000076', 'Magic Menagerie', 6, 2021, 6, 3, 12),
        ('9780000000077', 'Eternal Romance', 7, 2022, 7, 4, 9),
        ('9780000000078', 'Twisted Dreams', 8, 2023, 8, 5, 13),
        ('9780000000079', 'Mind and Matter', 9, 1997, 9, 6, 11),
        ('9780000000080', 'Pathways to Growth', 10, 1998, 10, 7, 9),
        ('9780000000081', 'Blue Planet', 1, 1999, 1, 9, 7),
        ('9780000000082', 'River of Light', 2, 2000, 2, 10, 6),
        ('9780000000083', 'Case 99', 3, 2001, 3, 1, 5),
        ('9780000000084', 'Biography: Legends', 4, 2002, 4, 2, 10),
        ('9780000000085', 'World Wars', 5, 2003, 5, 3, 8),
        ('9780000000086', 'Little Stars', 6, 2004, 6, 4, 14),
        ('9780000000087', 'Midnight Song', 7, 2005, 7, 5, 11),
        ('9780000000088', 'Moonlit Fright', 8, 2006, 8, 6, 6),
        ('9780000000089', 'New Ideas', 9, 2007, 9, 7, 4),
        ('9780000000090', 'You Are Strong', 10, 2008, 10, 8, 8),
        ('9780000000091', 'Nebula Nights', 1, 2009, 1, 10, 14),
        ('9780000000092', 'Seas of Fate', 2, 2010, 2, 1, 6),
        ('9780000000093', 'Last Mystery', 3, 2011, 3, 2, 9),
        ('9780000000094', 'Redefining Heroes', 4, 2012, 4, 3, 13),
        ('9780000000095', 'Conquest', 5, 2013, 5, 4, 10),
        ('9780000000096', 'Childhood Joys', 6, 2014, 6, 5, 12),
        ('9780000000097', 'Autumn Wedding', 7, 2015, 7, 6, 7),
        ('9780000000098', 'The Other Side', 8, 2016, 8, 7, 8),
        ('9780000000099', 'Logic Unlocked', 9, 2017, 9, 8, 10),
        ('9780000000100', 'Change Makers', 10, 2018, 10, 9, 7);

    INSERT INTO authors (name, surname, bio)
    VALUES
        ('George', 'Orwell', 'English novelist, essayist, journalist, and critic, known for "1984" and "Animal Farm".'),
        ('J.K.', 'Rowling', 'British author, best known for the Harry Potter series.'),
        ('Harper', 'Lee', 'American author, known for her novel "To Kill a Mockingbird".'),
        ('Markus', 'Zusak', 'Australian writer, famous for "The Book Thief".'),
        ('Jane', 'Austen', 'English novelist known for works such as "Pride and Prejudice" and "Emma".'),
        ('Brandon', 'Sanderson', 'American author of epic fantasy and science fiction, creator of the Cosmere.'),
        ('F. Scott', 'Fitzgerald', 'American novelist, best known for "The Great Gatsby".'),
        ('Cormac', 'McCarthy', 'American novelist, known for his Southern Gothic and post-apocalyptic works like "The Road".'),
        ('S.E.', 'Hinton', 'American author known for "The Outsiders", a classic of young adult literature.'),
        ('Frank', 'Herbert', 'American author, most famous for his science-fiction novel "Dune".'),
        ('Ray', 'Bradbury', 'American author and screenwriter, famous for "Fahrenheit 451".'),
        ('J.D.', 'Salinger', 'American writer, known for his novel "The Catcher in the Rye".'),
        ('Charlotte', 'Bronte', 'English novelist and poet, known for "Jane Eyre".'),
        ('Malcolm', 'Gladwell', 'Canadian journalist, author, and public speaker, known for "Blink" and "The Tipping Point".'),
        ('Jon', 'Krakauer', 'American writer and mountaineer, famous for "Into the Wild".'),
        ('Paulo', 'Coelho', 'Brazilian lyricist and novelist, best known for "The Alchemist".'),
        ('Toni', 'Morrison', 'American novelist, recipient of the Nobel Prize in Literature, author of "Beloved".'),
        ('John', 'Green', 'American author of novels for young adults, including "The Fault in Our Stars".'),
        ('Elie', 'Wiesel', 'Romanian-American writer and Holocaust survivor, known for his memoir "Night".'),
        ('Tara', 'Westover', 'American author and historian, known for her memoir "Educated".'),
        ('Daniel', 'Kahneman', 'Israeli-American psychologist, known for his work on behavioral economics and author of "Thinking, Fast and Slow".'),
        ('Delia', 'Owens', 'American author and wildlife scientist, known for "Where the Crawdads Sing".'),
        ('Brian', 'Kernighan', 'Canadian computer scientist and co-author of "The C Programming Language".'),
        ('Steven', 'Levitt', 'American economist and co-author of the bestseller "Freakonomics".'),
        ('Aldous', 'Huxley', 'English writer and philosopher, best known for "Brave New World".'),
        ('Ayn', 'Rand', 'Russian-American writer and philosopher, author of "Atlas Shrugged".'),
        ('Frank', 'McCourt', 'Irish-American teacher and author, best known for his memoir "Angela’s Ashes".'),
        ('Liane', 'Moriarty', 'Australian author of "Big Little Lies" and other bestsellers.'),
        ('Donna', 'Tartt', 'American author, winner of the Pulitzer Prize for "The Goldfinch".'),
        ('Nicola', 'Yoon', 'Jamaican-American author of young adult novels, including "The Sun Is Also a Star".'),
        ('Michelle', 'Obama', 'American attorney, author, and former First Lady of the United States, known for her memoir "Becoming".'),
        ('Veronica', 'Roth', 'American novelist, best known for the "Divergent" series.'),
        ('Gillian', 'Flynn', 'American author, known for her mystery and thriller novels like "Gone Girl".'),
        ('William', 'Golding', 'British novelist, playwright, and poet, best known for "Lord of the Flies".'),
        ('Kazuo', 'Ishiguro', 'British novelist, winner of the Nobel Prize in Literature, known for "Never Let Me Go".'),
        ('Stieg', 'Larsson', 'Swedish journalist and writer, author of "The Girl with the Dragon Tattoo".'),
        ('Stephenie', 'Meyer', 'American novelist, author of the "Twilight" series.'),
        ('Jenny', 'Han', 'American author, known for "To All the Boys I’ve Loved Before".'),
        ('Nicola', 'Yoon', 'Jamaican-American author of young adult novels, including "The Sun Is Also a Star".'), -- Already added, duplicate, will adjust
        ('Michelle', 'Obama', 'American attorney, author, and former First Lady of the United States, known for her memoir "Becoming".'), -- Already added, duplicate, will adjust
        ('Emily St. John', 'Mandel', 'Canadian author, known for "Station Eleven".'),
        ('James', 'Dashner', 'American author, known for the "Maze Runner" series.'),
        ('William P.', 'Young', 'Canadian author, known for "The Shack".'),
        ('Rhonda', 'Byrne', 'Australian author and television producer, known for "The Secret".'),
        ('William', 'Styron', 'American novelist, known for "Darkness Visible" and "Sophie’s Choice".'),
        ('Agatha', 'Christie', 'English writer known for her detective novels, including "Murder on the Orient Express" and "The Murder of Roger Ackroyd".'),
        ('Stephen', 'King', 'American author of horror, supernatural fiction, and suspense, best known for "The Shining" and "It".'),
        ('Chimamanda Ngozi', 'Adichie', 'Nigerian author and feminist, celebrated for novels like "Half of a Yellow Sun" and "Americanah".'),
        ('Haruki', 'Murakami', 'Japanese writer known for his surreal and imaginative works, such as "Norwegian Wood" and "Kafka on the Shore".'),
        ('Neil', 'Gaiman', 'English author of fantasy and speculative fiction, known for "The Sandman" series and "Good Omens".');


    INSERT INTO book_authors (book_id, author_id) VALUES
        (1, 1),    -- '1984' — George Orwell
        (2, 2),    -- 'Harry Potter and the Goblet of Fire' — J.K. Rowling
        (3, 3),    -- 'To Kill a Mockingbird' — Harper Lee
        (4, 4),    -- 'The Book Thief' — Markus Zusak
        (5, 5),    -- 'Pride and Prejudice' — Jane Austen
        (6, 6),    -- 'The Way of Kings' — Brandon Sanderson
        (7, 7),    -- 'The Great Gatsby' — F. Scott Fitzgerald
        (8, 8),    -- 'The Road' — Cormac McCarthy
        (9, 9),    -- 'The Outsiders' — S.E. Hinton
        (10, 10),  -- 'Dune' — Frank Herbert
        (11, 11),  -- 'Fahrenheit 451' — Ray Bradbury
        (12, 12),  -- 'The Catcher in the Rye' — J.D. Salinger
        (13, 13),  -- 'Jane Eyre' — Charlotte Brontë
        (14, 14),  -- 'Blink' — Malcolm Gladwell
        (15, 2),   -- 'Harry Potter and the Prisoner of Azkaban' — J.K. Rowling
        (16, 15),  -- 'Into the Wild' — Jon Krakauer
        (17, 16),  -- 'The Alchemist' — Paulo Coelho
        (18, 17),  -- 'Beloved' — Toni Morrison
        (19, 18),  -- 'Looking for Alaska' — John Green
        (20, 18),  -- 'Paper Towns' — John Green
        (21, 19),  -- 'Night' — Elie Wiesel
        (22, 20),  -- 'Educated' — Tara Westover
        (23, 21),  -- 'Thinking, Fast and Slow' — Daniel Kahneman
        (24, 22),  -- 'Where the Crawdads Sing' — Delia Owens
        (25, 23),  -- 'The C Programming Language' — Brian W. Kernighan*
        (25, 24),  -- 'The C Programming Language' — Dennis M. Ritchie*
        (26, 25),  -- 'Freakonomics' — Steven D. Levitt*
        (26, 26),  -- 'Freakonomics' — Stephen J. Dubner*
        (27, 27),  -- 'Brave New World' — Aldous Huxley
        (28, 28),  -- 'Atlas Shrugged' — Ayn Rand
        (29, 29),  -- 'Angela’s Ashes' — Frank McCourt
        (30, 30), -- 'Big Little Lies' — Liane Moriarty
        (31, 31),  -- 'The Goldfinch' — Donna Tartt
        (32, 40),  -- 'The Sun Is Also a Star' — Nicola Yoon
        (33, 41),  -- 'Becoming' — Michelle Obama
        (34, 32),  -- 'Divergent' — Veronica Roth
        (35, 33),  -- 'Gone Girl' — Gillian Flynn
        (36, 30),  -- 'The Husband’s Secret' — Liane Moriarty
        (37, 34),  -- 'Lord of the Flies' — William Golding
        (38, 42),  -- 'Station Eleven' — Emily St. John Mandel
        (39, 43),  -- 'The Maze Runner' — James Dashner
        (40, 35),  -- 'Never Let Me Go' — Kazuo Ishiguro
        (41, 36),  -- 'The Power of Habit' — Charles Duhigg
        (42, 44),  -- 'The Shack' — William P. Young
        (43, 45),  -- 'The Secret' — Rhonda Byrne
        (44, 37),  -- 'The Girl With the Dragon Tattoo' — Stieg Larsson
        (45, 46),  -- 'Darkness Visible' — William Styron
        (46, 38),  -- 'Twilight' — Stephenie Meyer
        (47, 39),  -- 'To All the Boys I’ve Loved Before' — Jenny Han
        (48, 1),   -- 'Shadow Over the Valley' — George Orwell
        (49, 2),   -- 'Quest for the Lost Relic' — J.K. Rowling
        (50, 3),   -- 'Midnight Whispers' — Harper Lee
        (51, 4),   -- 'Inside the Mind: A Biography' — Markus Zusak
        (52, 5),   -- 'Paths of Time' — Jane Austen
        (53, 6),   -- 'Children of the Sky' — Brandon Sanderson
        (54, 7),   -- 'Hearts Entwined' — F. Scott Fitzgerald
        (55, 8),   -- 'Nightmare Alley' — Cormac McCarthy
        (56, 9),   -- 'Thinking About the World' — S.E. Hinton
        (57, 10),  -- 'Success Habits' — Frank Herbert
        (58, 11),  -- 'Stars Above Us' — Ray Bradbury
        (59, 12),  -- 'Forest of Magic' — J.D. Salinger
        (60, 13),  -- 'The Disappearance Case' — Charlotte Brontë
        (61, 14),  -- 'Best of Times' — Malcolm Gladwell
        (62, 15),  -- 'Empires Rise' — Jon Krakauer
        (63, 16),  -- 'Stories for Children' — Paulo Coelho
        (64, 17),  -- 'Romance in Spring' — Toni Morrison
        (65, 18),  -- 'House of Horrors' — John Green
        (66, 19),  -- 'Logic for Life' — Elie Wiesel
        (67, 20),  -- 'Guided Self' — Tara Westover
        (68, 21),  -- 'Galactic Crossing' — Daniel Kahneman
        (69, 22),  -- 'The Silver Wand' — Delia Owens
        (70, 23),  -- 'Curse of the Emerald' — Brian W. Kernighan
        (71, 24),  -- 'Pioneers: Biographies' — Dennis M. Ritchie
        (72, 25),  -- 'Past Echoes' — Steven D. Levitt
        (73, 26),  -- 'Dragon Tales' — Stephen J. Dubner
        (74, 27),  -- 'Summer Embrace' — Aldous Huxley
        (75, 28),  -- 'Haunted Library' — Ayn Rand
        (76, 29),  -- 'Truth in Thought' — Frank McCourt
        (77, 30),  -- 'You Can!' — Liane Moriarty
        (78, 31),  -- 'Dream Engines' — Donna Tartt
        (79, 32),  -- 'Serpent Queen' — Veronica Roth
        (80, 33),  -- 'Death on High Street' — Gillian Flynn
        (81, 34),  -- 'Inspiring Lives' — William Golding
        (82, 35),  -- 'Chronicles Unfold' — Kazuo Ishiguro
        (83, 36),  -- 'Zoo Adventures' — Charles Duhigg
        (84, 37),  -- 'Paris Affair' — Stieg Larsson
        (85, 38),  -- 'Last Scream' — Stephenie Meyer
        (86, 39),  -- 'Chains of Reason' — Jenny Han
        (87, 40),  -- 'Success Skills' — Nicola Yoon
        (88, 41),  -- 'Earthrise' — Michelle Obama
        (89, 42),  -- 'Enchanted Woods' — Emily St. John Mandel
        (90, 43),  -- 'The Final Puzzle' — James Dashner
        (91, 44),  -- 'Inventors: Biographies' — William P. Young
        (92, 45),  -- 'Rewriting History' — Rhonda Byrne
        (93, 46),  -- 'Castle of Dreams' — William Styron
        (94, 1),   -- 'Lakeside Love' — George Orwell
        (95, 2),   -- 'Dark Shadows' — J.K. Rowling
        (96, 3),   -- 'Human Nature' — Harper Lee
        (97, 4),   -- 'The Leader Within' — Markus Zusak
        (98, 5),   -- 'Infinity Edge' — Jane Austen
        (99, 6),   -- 'Wintergate' — Brandon Sanderson
        (100, 7);  -- 'The Dagger Clue' — F. Scott Fitzgerald


    INSERT INTO staff (name, surname, date_of_birth, login, password_hash, phone)
    VALUES
        ('Emily', 'Davis', '1985-06-15', 'emilyd', 'hashed_password1', '201-555-0101'),
        ('Michael', 'Wilson', '1990-09-20', 'michaelw', 'hashed_password2', '202-555-0102'),
        ('Sarah', 'Thompson', '1988-03-10', 'saraht', 'hashed_password3', '203-555-0103'),
        ('David', 'Lee', '1992-12-05', 'davidl', 'hashed_password4', '204-555-0104'),
        ('Laura', 'Martinez', '1987-11-30', 'lauram', 'hashed_password5', '205-555-0105'),
        ('James', 'Anderson', '1983-07-22', 'jamesa', 'hashed_password6', '206-555-0106'),
        ('Patricia', 'Taylor', '1991-04-18', 'patriciat', 'hashed_password7', '207-555-0107'),
        ('Robert', 'Moore', '1986-02-14', 'robertm', 'hashed_password8', '208-555-0108'),
        ('Linda', 'Jackson', '1989-08-25', 'lindaj', 'hashed_password9', '209-555-0109'),
        ('William', 'Harris', '1993-01-11', 'williamh', 'hashed_password10', '210-555-0110'),
        ('Elizabeth', 'Clark', '1984-05-30', 'elizabethc', 'hashed_password11', '211-555-0111'),
        ('Joseph', 'Lewis', '1995-10-15', 'josephl', 'hashed_password12', '212-555-0112'),
        ('Mary', 'Walker', '1982-12-20', 'maryw', 'hashed_password13', '213-555-0113'),
        ('Charles', 'Hall', '1994-03-05', 'charlesh', 'hashed_password14', '214-555-0114'),
        ('Jennifer', 'Allen', '1981-09-09', 'jennifera', 'hashed_password15', '215-555-0115'),
        ('Thomas', 'Young', '1996-06-25', 'thomasy', 'hashed_password16', '216-555-0116'),
        ('Susan', 'King', '1980-11-11', 'susank', 'hashed_password17', '217-555-0117'),
        ('Christopher', 'Wright', '1997-02-28', 'christopherw', 'hashed_password18', '218-555-0118'),
        ('Karen', 'Scott', '1983-04-04', 'karens', 'hashed_password19', '219-555-0119'),
        ('Daniel', 'Torres', '1998-07-07', 'danielt', 'hashed_password20', '220-555-0120');

    INSERT INTO borrowers (name, surname, email, phone, address)
    VALUES
        ('John', 'Doe', 'john.doe@example.com', '123-456-7890', '123 Main St'),
        ('Jane', 'Smith', 'jane.smith@example.com', '234-567-8901', '456 Elm St'),
        ('Alice', 'Johnson', 'alice.johnson@example.com', '345-678-9012', '789 Pine St'),
        ('Bob', 'Brown', 'bob.brown@example.com', '456-789-0123', '101 Maple St'),
        ('Carol', 'White', 'carol.white@example.com', '567-890-1234', '202 Oak St'),
        ('David', 'Green', 'david.green@example.com', '678-901-2345', '303 Birch St'),
        ('Eve', 'Black', 'eve.black@example.com', '789-012-3456', '404 Cedar St'),
        ('Frank', 'Blue', 'frank.blue@example.com', '890-123-4567', '505 Spruce St'),
        ('Grace', 'Yellow', 'grace.yellow@example.com', '901-234-5678', '606 Willow St'),
        ('Hank', 'Orange', 'hank.orange@example.com', '012-345-6789', '707 Redwood St'),
        ('Ivy', 'Purple', 'ivy.purple@example.com', '123-456-7890', '808 Sequoia St'),
        ('Jack', 'Pink', 'jack.pink@example.com', '234-567-8901', '909 Aspen St'),
        ('Karen', 'Teal', 'karen.teal@example.com', '345-678-9012', '1010 Fir St'),
        ('Leo', 'Maroon', 'leo.maroon@example.com', '456-789-0123', '1111 Cypress St'),
        ('Mia', 'Lime', 'mia.lime@example.com', '567-890-1234', '1212 Palm St'),
        ('Nina', 'Olive', 'nina.olive@example.com', '678-901-2345', '1313 Bamboo St'),
        ('Oscar', 'Coral', 'oscar.coral@example.com', '789-012-3456', '1414 Cherry St'),
        ('Paul', 'Indigo', 'paul.indigo@example.com', '890-123-4567', '1515 Magnolia St'),
        ('Quinn', 'Violet', 'quinn.violet@example.com', '901-234-5678', '1616 Dogwood St'),
        ('Rita', 'Crimson', 'rita.crimson@example.com', '012-345-6789', '1717 Holly St'),
        ('Steve', 'Turquoise', 'steve.turquoise@example.com', '123-456-7890', '1818 Juniper St'),
        ('Tina', 'Aqua', 'tina.aqua@example.com', '234-567-8901', '1919 Lavender St'),
        ('Uma', 'Fuchsia', 'uma.fuchsia@example.com', '345-678-9012', '2020 Marigold St'),
        ('Victor', 'Plum', 'victor.plum@example.com', '456-789-0123', '2121 Narcissus St'),
        ('Wendy', 'Sage', 'wendy.sage@example.com', '567-890-1234', '2222 Orchid St'),
        ('Xander', 'Mauve', 'xander.mauve@example.com', '678-901-2345', '2323 Poppy St'),
        ('Yara', 'Periwinkle', 'yara.periwinkle@example.com', '789-012-3456', '2424 Rose St'),
        ('Zane', 'Saffron', 'zane.saffron@example.com', '890-123-4567', '2525 Tulip St'),
        ('Aaron', 'Beige', 'aaron.beige@example.com', '901-234-5678', '2626 Violet St'),
        ('Bella', 'Cyan', 'bella.cyan@example.com', '012-345-6789', '2727 Wisteria St');

    INSERT INTO loans (book_id, borrower_id, date_loaned, due_date, date_returned, who_borrowed_id)
    VALUES
        (1, 1, '2023-01-01', '2023-01-15', '2023-01-10', 1),   -- John Doe, returned, Emily Davis
        (2, 1, '2023-02-01', '2023-02-15', NULL, 2),            -- John Doe, not returned, Michael Wilson
        (3, 2, '2023-01-05', '2023-01-19', '2023-01-15', 3),   -- Jane Smith, returned, Sarah Thompson
        (4, 3, '2023-01-10', '2023-01-24', NULL, 4),            -- Alice Johnson, not returned, David Lee
        (5, 4, '2023-01-15', '2023-01-29', '2023-01-25', 5),   -- Bob Brown, returned, Laura Martinez
        (6, 5, '2023-01-20', '2023-02-03', NULL, 6),            -- Carol White, not returned, James Anderson
        (7, 6, '2023-02-01', '2023-02-15', '2023-02-10', 7),   -- David Green, returned, Patricia Taylor
        (8, 7, '2023-02-05', '2023-02-19', NULL, 8),            -- Eve Black, not returned, Robert Moore
        (9, 8, '2023-02-10', '2023-02-24', '2023-02-20', 9),   -- Frank Blue, returned, Linda Jackson
        (10, 9, '2023-02-15', '2023-03-01', NULL, 10),          -- Grace Yellow, not returned, William Harris
        (11, 10, '2023-03-01', '2023-03-15', '2023-03-10', 11), -- Hank Orange, returned, Elizabeth Clark
        (12, 11, '2023-03-05', '2023-03-19', NULL, 12),         -- Ivy Purple, not returned, Joseph Lewis
        (13, 12, '2023-03-10', '2023-03-24', '2023-03-20', 13), -- Jack Pink, returned, Mary Walker
        (14, 13, '2023-03-15', '2023-03-29', NULL, 14),         -- Karen Teal, not returned, Charles Hall
        (15, 14, '2023-04-01', '2023-04-15', '2023-04-10', 15), -- Leo Maroon, returned, Jennifer Allen
        (16, 15, '2023-04-05', '2023-04-19', NULL, 16),         -- Mia Lime, not returned, Thomas Young
        (17, 16, '2023-04-10', '2023-04-24', '2023-04-20', 17), -- Nina Olive, returned, Susan King
        (18, 17, '2023-04-15', '2023-04-29', NULL, 18),         -- Oscar Coral, not returned, Christopher Wright
        (19, 18, '2023-05-01', '2023-05-15', '2023-05-10', 19), -- Paul Indigo, returned, Karen Scott
        (20, 19, '2023-05-05', '2023-05-19', NULL, 20),         -- Quinn Violet, not returned, Daniel Torres
        (21, 20, '2023-05-10', '2023-05-24', '2023-05-20', 1),  -- Rita Crimson, returned, Emily Davis
        (22, 21, '2023-05-15', '2023-05-29', NULL, 2),          -- Steve Turquoise, not returned, Michael Wilson
        (23, 22, '2023-06-01', '2023-06-15', '2023-06-10', 3),  -- Tina Aqua, returned, Sarah Thompson
        (24, 23, '2023-06-05', '2023-06-19', NULL, 4),          -- Uma Fuchsia, not returned, David Lee
        (25, 24, '2023-06-10', '2023-06-24', '2023-06-20', 5),  -- Victor Plum, returned, Laura Martinez
        (26, 25, '2023-06-15', '2023-06-29', NULL, 6),          -- Wendy Sage, not returned, James Anderson
        (27, 26, '2023-07-01', '2023-07-15', '2023-07-10', 7),  -- Xander Mauve, returned, Patricia Taylor
        (28, 27, '2023-07-05', '2023-07-19', NULL, 8),          -- Yara Periwinkle, not returned, Robert Moore
        (29, 28, '2023-07-10', '2023-07-24', '2023-07-20', 9),  -- Zane Saffron, returned, Linda Jackson
        (30, 29, '2023-07-15', '2023-07-29', NULL, 10),         -- Aaron Beige, not returned, William Harris
        (31, 30, '2023-08-01', '2023-08-15', '2023-08-10', 11), -- Bella Cyan, returned, Elizabeth Clark
        (32, 2, '2023-08-05', '2023-08-19', NULL, 12),          -- Jane Smith, not returned, Joseph Lewis
        (33, 3, '2023-08-10', '2023-08-24', '2023-08-20', 13),  -- Alice Johnson, returned, Mary Walker
        (34, 4, '2023-08-15', '2023-08-29', NULL, 14),          -- Bob Brown, not returned, Charles Hall
        (35, 5, '2023-09-01', '2023-09-15', '2023-09-10', 15),  -- Carol White, returned, Jennifer Allen
        (36, 6, '2023-09-05', '2023-09-19', NULL, 16),          -- David Green, not returned, Thomas Young
        (37, 7, '2023-09-10', '2023-09-24', '2023-09-20', 17),  -- Eve Black, returned, Susan King
        (38, 8, '2023-09-15', '2023-09-29', NULL, 18),          -- Frank Blue, not returned, Christopher Wright
        (39, 9, '2023-10-01', '2023-10-15', '2023-10-10', 19),  -- Grace Yellow, returned, Karen Scott
        (40, 10, '2023-10-05', '2023-10-19', NULL, 20),         -- Hank Orange, not returned, Daniel Torres
        (41, 11, '2025-04-01', '2025-04-15', '2025-04-10', 1),  -- Ivy Purple, returned, Emily Davis
        (42, 12, '2025-04-05', '2025-04-19', NULL, 2),          -- Jack Pink, not returned, Michael Wilson
        (43, 13, '2025-04-10', '2025-04-24', '2025-04-20', 3),  -- Karen Teal, returned, Sarah Thompson
        (44, 14, '2025-04-15', '2025-04-29', NULL, 4),          -- Leo Maroon, not returned, David Lee
        (45, 15, '2025-04-20', '2025-05-04', '2025-04-30', 5),  -- Mia Lime, returned, Laura Martinez
        (46, 16, '2025-04-25', '2025-05-09', NULL, 6),          -- Nina Olive, not returned, James Anderson
        (47, 17, '2025-05-01', '2025-05-15', '2025-05-10', 7),  -- Oscar Coral, returned, Patricia Taylor
        (48, 18, '2025-05-03', '2025-05-17', NULL, 8),          -- Paul Indigo, not returned, Robert Moore
        (49, 19, '2025-05-05', '2025-05-19', '2025-05-15', 9),  -- Quinn Violet, returned, Linda Jackson
        (50, 20, '2025-05-06', '2025-05-20', NULL, 10);         -- Rita Crimson, not returned, William Harris

    INSERT INTO reservations (book_id, borrower_id, reservation_date, expire_date)
    VALUES
        (51, 1, '2023-01-01', '2023-01-08'),  -- John Doe
        (52, 2, '2023-01-05', '2023-01-12'),  -- Jane Smith
        (53, 3, '2023-01-10', '2023-01-17'),  -- Alice Johnson
        (54, 4, '2023-01-15', '2023-01-22'),  -- Bob Brown
        (55, 5, '2023-01-20', '2023-01-27'),  -- Carol White
        (56, 6, '2023-02-01', '2023-02-08'),  -- David Green
        (57, 7, '2023-02-05', '2023-02-12'),  -- Eve Black
        (58, 8, '2023-02-10', '2023-02-17'),  -- Frank Blue
        (59, 9, '2023-02-15', '2023-02-22'),  -- Grace Yellow
        (60, 10, '2023-03-01', '2023-03-08'), -- Hank Orange
        (61, 11, '2023-03-05', '2023-03-12'), -- Ivy Purple
        (62, 12, '2023-03-10', '2023-03-17'), -- Jack Pink
        (63, 13, '2023-03-15', '2023-03-22'), -- Karen Teal
        (64, 14, '2023-04-01', '2023-04-08'), -- Leo Maroon
        (65, 15, '2023-04-05', '2023-04-12'), -- Mia Lime
        (66, 16, '2023-04-10', '2023-04-17'), -- Nina Olive
        (67, 17, '2023-04-15', '2023-04-22'), -- Oscar Coral
        (68, 18, '2023-05-01', '2023-05-08'), -- Paul Indigo
        (69, 19, '2023-05-05', '2023-05-12'), -- Quinn Violet
        (70, 20, '2023-05-10', '2023-05-17'), -- Rita Crimson
        (66, 16, '2025-04-15', '2025-04-22'), -- Nina Olive, expired
        (67, 17, '2025-04-20', '2025-04-27'), -- Oscar Coral, expired
        (68, 18, '2025-04-25', '2025-05-02'), -- Paul Indigo, expired
        (69, 19, '2025-05-01', '2025-05-08'), -- Quinn Violet, active
        (70, 20, '2025-05-06', '2025-05-13');

COMMIT;