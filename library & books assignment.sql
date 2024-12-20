/*Q1-Create a database named library and a table named books with the following columns:
id (INT, Primary Key, Auto Increment)
title (VARCHAR(255))
author (VARCHAR(100))
year (YEAR)
genre (VARCHAR(100))*/
create database library;
use library;
create table books(id INT, title varchar(244),author varchar(100), year YEAR,GENRE varchar(100));
/*Q2-Insert the following book records into the books table:
"The Great Gatsby", "F. Scott Fitzgerald", 1925, "Fiction"
"Pride and Prejudice", "Jane Austen", 1813, "Romance"
"To Kill a Mockingbird", "Harper Lee", 1960, "Fiction"
"1984", "George Orwell", 1949, "Dystopian"
"Moby Dick", "Herman Melville", 1851, "Adventure"*/

DROP TABLE books;
create database library;
use library;
create table books(id INT, title varchar(244),author varchar(100), year YEAR,GENRE varchar(100));
insert into books(id,title,author,year,genre)values("1","The Great Gatsby", "F. Scott Fitzgerald", 1925, "Fiction"),
("2","Pride and Prejudice" ,"Jane Austen", 1970, "Romance"),
("3","To Kill a Mockingbird", "Harper Lee", 1960, "Fiction"),
("4","Dystopian","Herman Melville",1951,"Aventure");
select * from books;
#Write a query to select all books where the title starts with the letter 'T' using the LIKE operator.
select * from books where title like "t%"; # starts with t percent will come after 
# Write a query to find all books where the author's last name ends with 'son' using the LIKE operator.
select author where name like "%son";
#Write a query to find all books where the title contains the word 'and' using the LIKE operator.
select title where name like "%and%";
# Write a query to retrieve all books where the title ends with the word 'bird' using the LIKE operator.
select * from books where title like "%bird";
#Write a query to find all books where the title has exactly 3 characters using the REGEXP operator.
select * from books where title REGEXP"___n%";
#Write a query to select all books where the title contains a number using the REGEXP operator.
select *from books where title REGExP "%21";
#Write a query to retrieve all books where the author's name starts with any letter between 'A' and 'J' using the REGEXP operator.
select *from books where author REGEXP '[A-J]';
#Write a query to select all books where the genre is either 'Fiction' or 'Adventure' using the REGEXP operator.
select * from books where genre="fiction" or "Adventure";
# Write a query to find all books where the title contains at least one uppercase letter using the REGEXP operator.
select * from books where title REGEXP '^';
# Write a query to find all books where the year of publication is between 1800 and 1950 using the LIKE operator.
select * from books where year  between 1800 and 19590;
#Write a query to retrieve all books where the author's name contains exactly two words using the REGEXP operator.
select * from books where author REGEXP "^[A-Z][a-z]+ [a-z][A-Z]+$";
#Write a query to find all books where the title starts with the letter 'P' and contains exactly two words using the REGEXP operator.
select * from books where title REGEXP '^P[A-Z][a-z]+ [a-z][A-Z]+$;';
# Write a query to find all books where the title contains any special characters (e.g., '!', '@', '#', etc.) using the REGEXP operator.
SELECT *from books where title regexp "[[:punct:]]";








