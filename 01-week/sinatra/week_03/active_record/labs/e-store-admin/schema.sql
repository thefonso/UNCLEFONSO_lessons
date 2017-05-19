CREATE TABLE items (
  item_id serial primary key,
  title varchar(50) NOT NULL,
  price money,
  description text,
  created_at timestamp DEFAULT now()
);

CREATE TABLE users (
  user_id serial primary key,
  username varchar(100) NOT NULL,
  password varchar(64) NOT NULL,
  email varchar(255)
);


INSERT INTO users (username, password, email) VALUES ('clayton', 'password', 'clayton@ga.co');

UPDATE users SET password = '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8' WHERE username = 'clayton';
