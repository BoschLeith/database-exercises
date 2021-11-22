USE codeup_test_db;

DROP TABLE IF EXISTS pets;

CREATE TABLE pets (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    pet_name VARCHAR(30) NOT NULL,
    owner_name VARCHAR(30),
    age INT,
    UNIQUE unique_pet_name_owner_name (pet_name, owner_name),
    PRIMARY KEY (id)
);

INSERT INTO pets (pet_name, owner_name, age) VALUES
    ('Sparkles', 'John Smith', 7),
    ('Snickers', 'Fred Smith', 10),
    ('Spot', 'Cathy Smith', 3),
    ('Barky', 'Alex Smith', 3);

SELECT * FROM pets;

# SELECT * FROM pets WHERE id = 3;

# EXPLAIN SELECT id FROM pets WHERE id = 3;

SHOW INDEXES FROM pets;

INSERT INTO pets (pet_name, owner_name, age)
VALUES ('Buddy', 'Jack Smith', 3);

INSERT INTO pets (pet_name, owner_name, age)
VALUES ('Buddy', 'Fred Smith', 2);

INSERT INTO pets (pet_name, owner_name, age)
VALUES ('Snickers', 'Jack Smith', 2);

# ALTER TABLE pets
# ADD UNIQUE (pet_name);