create database filmdepartment;
use filmdepartment;

create TABLE Producer (prod_id INT,prod_name VARCHAR(250),movie_name VARCHAR(250),movie_rating INT,
release_year INT);

INSERT INTO Producer VALUES(101, "murugadoss", "sarkar", 9, 2019);
INSERT INTO Producer VALUES(115, "agoram kalai", "nerkondapaarvai", 8, 2020);
INSERT INTO Producer VALUES(126, "Gnanavel raja", "kaalai", 6, 2018);
INSERT INTO Producer VALUES(155, "udhayanithi", "kadhal", 7, 2019); 
INSERT INTO Producer VALUES(111, "perarasu", "kajenthiran", 9, 2015);

SELECT * FROM Producer;

 // Query - 01 - (Find the name of all the Films whose producer is "perarasu")
 
 select prod_id
 From Producer
 WHERE Prod_name = "perarasu";
 
 //Query - 02 -(Which movie is releasing on particular releasing date '2018")
 
 select movie_name
 From Producer
 WHERE release_year ='2018';

CREATE TABLE Actor(Actor_name VARCHAR(65),Gender VARCHAR(50),Acted_movie VARCHAR(50),Acted_year INT);
  
  INSERT INTO Actor VALUES("Vijay", "MALE","Varisu", 2023);
  INSERT INTO Actor VALUES("Ajith", "MALE",  "Valimai", 2022);
  INSERT INTO Actor VALUES("Kamal", "MALE", "Vikram",2018);
  INSERT INTO Actor VALUES("Surya", "MALE", "Anjaan", 2019);
  INSERT INTO Actor VALUES("Sivakarthigeyan", "MALE","Maan karathey", 2018);
  INSERT INTO Actor VALUES("Manikandan", "MALE","jaibheem", 2021);
  
  SELECT * FROM Actor;
  
  //Query 03 - (Display all artists who acted in a film between 2018 and 2022)
  
  SELECT Actor_name 
  FROM Actor
  WHERE Acted_year BETWEEN 2018 AND 2022;

CREATE TABLE Movies (Title VARCHAR(160),Gender VARCHAR(150),Director VARCHAR(150),Artist_Count INT,Movie_lang VARCHAR(150),
  Release_year INT,Star_rating INT);

  INSERT INTO Movies VALUES("Varisu", "male", "Vamsi", 15, "tamil",2022, 8);
  INSERT INTO Movies VALUES("Valimai", "male", "Siva", 18, "tamil",2021, 7);
  INSERT INTO Movies VALUES("Prince", "male", "Anudeep", 10, "tamil",2020, 6);
  INSERT INTO Movies VALUES("Vikram", "male", "Lokesh", 30, "tamil",2023, 9);
  INSERT INTO Movies VALUES("Love today", "male", "Pradeep", 15, "tamil",2021, 8);
  
  
  SELECT * FROM Movies
  
  
   // Query 04 - (Display the names of films with the stars received and sort the result on the basis of stars)

SELECT Title, Star_rating 
FROM Movies
ORDER BY Star_rating;

// Query 05 -  (Update the stars of all films whose producer is ‘Vamsi’ to 8)
UPDATE Producer SET movie_rating = 8 
WHERE Prod_name = "Vamsi"

// Query 06 - Movies and Producer join(full outer join)
SELECT * FROM Movies
LEFT JOIN Producer ON Movies.release_year = Producer.release_year
UNION ALL 
SELECT * FROM Movies
RIGHT JOIN Producer ON Movies.release_year = Producer.release_year
