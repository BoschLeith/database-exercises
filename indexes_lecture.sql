USE codeup_test_db;

DROP TABLE IF EXISTS pets;

CREATE TABLE pets (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    pet_name VARCHAR(30) NOT NULL,
    owner_name VARCHAR(30),
    age INT,
    PRIMARY KEY (id)
);