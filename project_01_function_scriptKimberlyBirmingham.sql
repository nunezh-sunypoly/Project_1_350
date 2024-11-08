CREATE OR REPLACE FUNCTION get_avg_wage(occupation INT)
RETURNS NUMERIC AS $$
BEGIN
    RETURN (SELECT AVG(annual_mean_wage)
            FROM wages
            WHERE occupation_id = occupation);
END;
$$ LANGUAGE plpgsql;



CREATE OR REPLACE FUNCTION get_avg_employment_rse(state_id INT)
RETURNS NUMERIC AS $$
BEGIN
    RETURN (SELECT AVG(employment_rse)
            FROM employment_data
            WHERE employment_data.state_id = get_avg_employment_rse.state_id);
END;
$$ LANGUAGE plpgsql;


CREATE OR REPLACE PROCEDURE update_employment_data(
    occupation INT,
    yr DATE,
    state INT,
    new_employment INT,
    new_employment_rse NUMERIC
)
LANGUAGE plpgsql AS $$
BEGIN
    UPDATE employment_data
    SET employment = new_employment,
        employment_rse = new_employment_rse
    WHERE occupation_id = occupation
      AND date = yr  -- Use the parameter yr here
      AND state_id = state;
END;
$$;


CREATE OR REPLACE PROCEDURE add_occupation(
    code VARCHAR,
    title VARCHAR,
    description_text TEXT
)
LANGUAGE plpgsql AS $$
BEGIN
    INSERT INTO occupations (occupation_code, occupation_title, description)
    VALUES (code, title, description_text);
END;
$$;
