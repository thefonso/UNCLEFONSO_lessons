create table posts (
  post_id serial primary key,
  title varchar(50) NOT NULL,
  body text,
  created_at timestamp DEFAULT now()
);
