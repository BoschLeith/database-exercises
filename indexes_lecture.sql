USE codeup_test_db;

DROP TABLE IF EXISTS owners;

CREATE TABLE owners
(
    id      INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name    VARCHAR(30)  NOT NULL,
    address VARCHAR(255) NOT NULL
);

DROP TABLE IF EXISTS pets;

CREATE TABLE pets
(
    id       INT UNSIGNED AUTO_INCREMENT,
    pet_name VARCHAR(30) NOT NULL,
    owner_id INT UNSIGNED,
    age      INT,
    PRIMARY KEY (id),
    FOREIGN KEY (owner_id) REFERENCES owners (id)
);

# INSERT INTO pets (pet_name, owner_name, age)
# VALUES ('Sparkles', 'John Smith', 7),
#        ('Snickers', 'Fred Smith', 10),
#        ('Spot', 'Cathy Smith', 3),
#        ('Barky', 'Alex Smith', 3);

SELECT *
FROM pets;

SELECT *
FROM owners;

# SELECT * FROM pets WHERE id = 3;

# EXPLAIN SELECT id FROM pets WHERE id = 3;

SHOW INDEXES FROM pets;

# INSERT INTO pets (pet_name, owner_name, age)
# VALUES ('Buddy', 'Jack Smith', 3);

# INSERT INTO pets (pet_name, owner_name, age)
# VALUES ('Buddy', 'Fred Smith', 2);

# INSERT INTO pets (pet_name, owner_name, age)
# VALUES ('Snickers', 'Jack Smith', 2);

# ALTER TABLE pets
# ADD UNIQUE (pet_name);

INSERT INTO pets (pet_name, owner_id, age)
VALUES ('Puddle', null, 2);

INSERT INTO pets (pet_name, owner_id, age)
VALUES ('Spot', 1, 2);

INSERT INTO owners (name, address)
VALUES ('Darth Smith', '1138 Death Star Rd.');

DELETE FROM owners WHERE id = 1;