CREATE TABLE users
(
  id SERIAL8 PRIMARY KEY,
  first VARCHAR(20) NOT NULL,
  last VARCHAR(20) NOT NULL,
  dob DATE CHECK (dob < '1/1/2000'),
  relationship TEXT,
  friends INT4 DEFAULT 0,
  city VARCHAR(25)
);