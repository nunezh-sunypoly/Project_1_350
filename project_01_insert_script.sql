-- Insert into occupations
INSERT INTO occupations (occupation_code, occupation_title, description) VALUES
('11-1021', 'General and Operations Managers', 'Plan, direct, or coordinate the operations of public or private sector organizations.');

-- Insert into state_data
INSERT INTO state_data (state_code, state_name) VALUES
('CA', 'California'),
('TX', 'Texas');

-- Insert into employment_data
INSERT INTO employment_data (occupation_id, year, state_id, employment, employment_rse) VALUES
(1, CONVERT(date,'22.12.2023',104), 1, 50000, 1.5), -- California
(1, CONVERT(date,'07.06.2015',104), 2, 30000, 1.7); -- Texas

-- Insert into wages
INSERT INTO wages (occupation_id, year, state_id, hourly_mean_wage, annual_mean_wage, wage_rse) VALUES
(1, CONVERT(date,'11.09.2013',104), 1, 50.75, 105560, 1.2), -- California
(1, CONVERT(date,'03.04.2003',104), 2, 48.20, 100256, 1.4); -- Texas
