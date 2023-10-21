-- Choose one of your favorite films and add it to the "film" table. Fill in rental rates with 4.99 and rental durations with 2 weeks.
-- Add the actors who play leading roles in your favorite film to the "actor" and "film_actor" tables (three or more actors in total).
-- Add your favorite movies to any store's inventory.

INSERT INTO film (title, description, release_year, language_id, rental_duration, rental_rate, length, replacement_cost, rating)
VALUES ('The Lord of the Rings', 'The Lord of the Rings is an epic[1] high-fantasy novel[a] by the English author and scholar J. R. R. Tolkien...', 2001, 1, 14, 4.99, 230, 19.99, 'PG-13');

INSERT INTO actor (first_name, last_name)
VALUES
  ('VIGGO', 'MORTENSEN'),
  ('IAN', 'MCKELLEN'),
  ('ORLANDO', 'BLOOM');

SELECT actor_id
FROM actor WHERE first_name IN ('VIGGO', 'IAN', 'ORLANDO')
AND last_name IN ('MORTENSEN', 'MCKELLEN', 'BLOOM');

INSERT INTO film_actor (actor_id, film_id)
VALUES (201, (SELECT film_id FROM film WHERE title = 'The Lord of the Rings')),
       (202, (SELECT film_id FROM film WHERE title = 'The Lord of the Rings')),
       (203, (SELECT film_id FROM film WHERE title = 'The Lord of the Rings'));

INSERT INTO inventory (film_id, store_id)
VALUES ((SELECT film_id FROM film WHERE title = 'The Lord of the Rings'), 1);
