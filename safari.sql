DROP TABLE IF EXISTS assignments;
DROP TABLE IF EXISTS animals;
DROP TABLE IF EXISTS staffs;
DROP TABLE IF EXISTS enclosures;

CREATE TABLE enclosures (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    capacity INT,
    closedForMaintenance BOOLEAN
);

CREATE TABLE animals (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    type VARCHAR(255),
    age INT,
    enclosure_id INT REFERENCES enclosures(id)
);

CREATE TABLE staffs (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    employeeNumber INT
);

CREATE TABLE assignments (
    id SERIAL PRIMARY KEY,
    employeeId INT REFERENCES staffs(id),
    enclosureId INT REFERENCES enclosures(id),
    day VARCHAR(255)
);

INSERT INTO enclosures (name, capacity, closedForMaintenance) VALUES ('big cat field', 20, false);
INSERT INTO enclosures (name, capacity, closedForMaintenance) VALUES ('small cat field', 10, true);
INSERT INTO enclosures (name, capacity, closedForMaintenance) VALUES ('bear field', 30, false);
INSERT INTO enclosures (name, capacity, closedForMaintenance) VALUES ('cow field', 50, true);

INSERT INTO animals (name, type, age, enclosure_id) VALUES ('Tony', 'Tiger', 59, 1);
INSERT INTO animals (name, type, age, enclosure_id) VALUES ('Sima', 'monkey', 23, 2);
INSERT INTO animals (name, type, age, enclosure_id) VALUES ('Mufasa', 'lion', 32, 3);
INSERT INTO animals (name, type, age, enclosure_id) VALUES ('Scar', 'panther', 12, 4);



INSERT INTO staffs (name, employeeNumber) VALUES ('Captain Rik', 12345);
INSERT INTO staffs (name, employeeNumber) VALUES ('Captain nimo', 54321);
INSERT INTO staffs (name, employeeNumber) VALUES ('Captain tarek', 63283);
INSERT INTO staffs (name, employeeNumber) VALUES ('Captain james', 12123);

INSERT INTO assignments (employeeId, enclosureId, day) VALUES (1, 1, 'Tuesday');
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (2, 2, 'Wednesday');
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (3, 3, 'Thursday');
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (4, 4, 'Friday');

