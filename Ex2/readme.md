# Software Project Management Information System

Author: Hakam Nabulssi 

## Description
This SQL code creates six tables to store data about programmers, teams, projects, bugs, and their development. Each table has specific columns and data types to store relevant information. You can use the INSERT INTO statement to add data to these tables and use the SELECT statement to retrieve data from them.

## Database Tables
. "Programmer": stores programmer information such as id, name, and education.
. "Team": stores team information such as name.
. "Project": stores project information such as name, client, and deadline.
. "Bug": stores information about bugs such as bugDate, description, and    whether it has been solved.
. "Work_at": stores information about the programmers' teams such as role, team_name, and programmer_id.
. "Develop": stores information about project development such as hours, team_name, and project_name.

## Usage   
To use this program, you first need to create the necessary database tables. You can do this by running the SQL code provided in the EX2.sql file.

Here's an example of how you can insert data into the tables:

-- Insert data to the tables  
 INSERT INTO Programmer (id, name, education)
 VALUES (11, 'Mosheh', 'Computer Science'),
        (22, 'Carlos', 'Software Engineering'),
        (33, 'Yousef', 'Programmer');

 INSERT INTO Team (name)
 VALUES ('Development'),
        ('Testing'),
        ('Marketing');

 INSERT INTO Project (name, client, deadline)
 VALUES ('Project A', 'ABC.', '30/4'),
        ('Project B', 'XYZ ', '15/5'),
        ('Project C', 'KML ', '20/7');

 INSERT INTO Bug (bugDate, description, solved)
 VALUES ('1/4', 'Bug 1', 0),
        ('2/4', 'Bug2', 1),
        ('3/4', 'Bug3', 0);

 INSERT INTO work_at (role, programmer_id, team_name)
 VALUES ('Developer', 1, 'Development'),
        ('Tester', 2, 'Testing'),
        ('Programmer', 3, 'Programming');

 INSERT INTO develop (hours, team_name, project_name)
 VALUES (10, 'Development', ' A'),
        (15, 'Testing', ' B'),
        (20, 'Development', 'C');

-- Display the Tables 
SELECT * FROM Programmer;
SELECT * FROM Team;
SELECT * FROM Project;
SELECT * FROM Bug;
SELECT * FROM work_at;
SELECT * FROM develop;

## Running the SQL code in a terminal

. navigate to the directory where the SQL file is saved, Log in to the database management system of your choice
. create a new database by entering the following command: CREATE DATABASE <database_name>;
. create the tables by copying and pasting the SQL code into the terminal window
. insert data into the tables by copying and pasting the example data and pressing Enter.
. insert data into the tables by copying and pasting the example data and pressing Enter SELECT * FROM <table_name>;
