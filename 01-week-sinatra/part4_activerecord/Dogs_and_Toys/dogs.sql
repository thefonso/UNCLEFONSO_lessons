CREATE TABLE dogs (
  id serial8 primary key,
  name varchar(25),
  photo text,
  breed varchar(25)
);

CREATE TABLE toys (
  id serial8 primary key,
  toy_type VARCHAR(25),
  dog_id serial8,
  FOREIGN KEY (dog_id)
    REFERENCES dogs(id)
);
