DROP TABLE Athletes;
DROP TABLE Events;
DROP TABLE Nations;


CREATE TABLE Nations (
id SERIAL4 primary key,
name VARCHAR(255),
flag VARCHAR(255)
);

CREATE TABLE Events (
id SERIAL4 primary key,
gold_id INT4,
silver_id INT4,
bronze_id INT4,
name VARCHAR(255)
);

CREATE TABLE Athletes (
id SERIAL4 primary key,
name VARCHAR(255),
nation_id INT4 references Nations(id),
event_id INT4 references Events(id)
);
