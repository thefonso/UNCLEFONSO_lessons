CREATE TABLE items (
  item_id serial primary key,
  title varchar(50) NOT NULL,
  price money,
  description text,
  created_at timestamp DEFAULT now()
);
