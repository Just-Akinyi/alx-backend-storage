-- creates tables
-- Create the countries table
CREATE TABLE IF NOT EXISTS countries (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    code CHAR(2) NOT NULL UNIQUE
);

-- Insert the valid country codes into the countries table
INSERT INTO countries (code)
VALUES ('US'), ('CO'), ('TN');

-- Create the users table
CREATE TABLE IF NOT EXISTS users (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL UNIQUE,
    name VARCHAR(255) NOT NULL,
    country_id INT NOT NULL,
    FOREIGN KEY (country_id) REFERENCES countries(id)
);
