CREATE DATABASE IF NOT EXISTS your_database;
USE your_database;

CREATE TABLE IF NOT EXISTS your_table (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50)
);

DELIMITER //
CREATE PROCEDURE IF NOT EXISTS insert_sample_data()
BEGIN
    DECLARE i INT DEFAULT 1;
    WHILE i <= 100 DO
        INSERT INTO your_table (name) VALUES (CONCAT('User_', FLOOR(RAND()*1000)));
        SET i = i + 1;
    END WHILE;
END //
DELIMITER ;
CALL insert_sample_data();

GRANT ALL PRIVILEGES ON your_database.* TO 'your_user'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;
