# I learned the following on June 22nd, 2025.

## Installed phpMyAdmin on Docker

- I created a folder called 'my-sql-learning'
- I created a YAML file in that folder called 'docker-compose.yml'
- Content of the YAML file can be found here <br> https://github.com/suerocks/How-I-Mastered-SQL/blob/3dd7e9ef8af0c2a6c39cf2afc987fc5151961be2/June-2025/docker-compose.yml
- Opened Terminal on Mac and navigated to the 'my-sql-learning' folder using cd
- Ran the command 'docker-compose up -d'
- Opened Docker to confirm the containers are present.
- Opened a browser and navigated to localhost:8080 and accessed the 


## What is a Database?
- A database is a directory containing files that correspond to tables in the database.
- When a database is initially created, it contains no tables.

### Commands learned

#### CREATE DATABASE
- Example: CREATE DATABASE food
- Creates a database named 'food'.
- Creates a database.

#### CREATE DATABASE IF NOT EXISTS food
- Example: CREATE DATABASE IF NOT EXISTS food
- This will create a database named 'food' and if it already exists, it does not show any errors, and just moves on.
- 'IF NOT EXISTS' is added to prevent an error showing up if the cars database already exists.

#### SHOW DATABASES
- List the available databases

#### DROP DATABASE
- Example: DELETE DATABASE food
- Deletes the database named food.
- Deletes a database.

#### USE DATABASE
- Example USE food
- Selects the database named 'food'. So all commands/queries will be applied to the food database.
- Selects the database where you want to perform commands/queries.

## What is a Table
- A structured format for organizing data within a database, consisting of rows and columns that form a grid-like structure.

### Commands learned

#### CREATE TABLE
#### DROP TABLE
#### NOT NULL
#### DEFAULT
#### PRIMARY KEYS
#### AUTO_INCREMENT

## What is a Datatype?
- A datatype specifies the type of data a column can hold in a table.

### Commands learned

#### VARCHAR
#### TEXT
#### INTEGER

## How to Insert Data Into a Table?

#### INSERT INTO () VALUES ()

## How to view a Table?

#### SELECT * FROM
