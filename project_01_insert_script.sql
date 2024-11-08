--Insert script by Nicholas Littlefield

-- Insert into occupations
INSERT INTO occupations (occupation_code, occupation_title, description) VALUES
('11-2011', 'Advertising and Promotions Managers', 'Plan, direct, or coordinate advertising policies and programs or produce collateral materials.');

-- Insert into state_data
INSERT INTO state_data (state_code, state_name) VALUES
('NY', 'New York'),
('NC', 'North Carolina'),
('KY', 'Kentucky'),
('PA', 'Pennsylvania');

-- Insert into employment_data
INSERT INTO employment_data (employment_id, date, employment, employment_rse) VALUES
(1 , to_date('17-10-2022', 'DD-MM-YYYY'), 40000, 1.6), 
(2 , to_date('07-09-2018', 'DD-MM-YYYY'), 20000, 1.8), 
(3 , to_date('19.06.2021', 'DD-MM-YYYY'), 30000, 1.7), 
(4 , to_date('13.12.2020', 'DD-MM-YYYY'), 50000, 1.4); 

-- Insert into wages
INSERT INTO wages (date, hourly_mean_wage, annual_mean_wage, wage_rse) VALUES
(to_date('11.09.2013', 'DD-MM-YYYY'), 51.66, 105740, 1.3), -- New York
(to_date('03.04.2003', 'DD-MM-YYYY'), 53.13, 100278, 1.7), -- North Carolina
(to_date('04.11.2007', 'DD-MM-YYYY'), 51.66, 105740, 1.5), -- Kentucky
(to_date('08.12.2016', 'DD-MM-YYYY'), 53.13, 100278, 1.9); -- Pennsylvania