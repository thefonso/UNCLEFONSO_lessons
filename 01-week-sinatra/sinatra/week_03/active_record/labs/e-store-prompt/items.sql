CREATE TABLE items (
  item_id,
  title,
  price,
  description,
  created_at timestamp DEFAULT now()
);
