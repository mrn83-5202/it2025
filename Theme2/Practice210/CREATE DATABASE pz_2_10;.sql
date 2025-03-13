-- Active: 1739617071796@@127.0.0.1@5432@pz_2_10@public
CREATE  DATABASE pz_2_10;

CREATE TABLE Equipment (
    name VARCHAR (100),
    type VARCHAR (100),
    status VARCHAR (100),
    unit_id INT
);
    
CREATE OR REPLACE PROCEDURE add_equipment(
    p_name VARCHAR(100),
    p_type VARCHAR(50),
    p_status VARCHAR(50),
    p_unit_id INT
)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO Equipment(name, type, status, unit_id)
    VALUES (p_name, p_type, p_status, p_unit_id);
END;
$$;

CALL add_equipment('Танк Т-90', 'Танк', 'Активна', 1);
CALL add_equipment('Танк Т-80', 'Танк', 'Активна', 2);
CALL add_equipment('Танк Т-50', 'Танк', 'Активна', 3);