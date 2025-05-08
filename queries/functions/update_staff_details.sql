CREATE OR REPLACE FUNCTION update_staff_details(
    p_staff_id INT,
    p_name VARCHAR(200),
    p_surname VARCHAR(200),
    p_date_of_birth DATE,
    p_phone VARCHAR(20),
    p_login VARCHAR(50)
)
    RETURNS VOID AS $$
BEGIN
    -- Check if the new login is taken by another staff member
    IF EXISTS (
        SELECT 1
        FROM staff
        WHERE login = p_login
          AND id != p_staff_id
    ) THEN
        RAISE EXCEPTION 'Login already in use';
    END IF;

    -- Update staff details
    UPDATE staff
    SET name = p_name,
        surname = p_surname,
        date_of_birth = p_date_of_birth,
        phone = p_phone,
        login = p_login
    WHERE id = p_staff_id;
END;
$$ LANGUAGE plpgsql;

SELECT update_staff_details(1, 'Emily', 'Davis', '1985-06-15', '201-555-0101', 'emilyd_new');