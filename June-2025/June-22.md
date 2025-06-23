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
- **Example:** CREATE DATABASE food
- Creates a database named 'food'.
- Creates a database.

#### CREATE DATABASE IF NOT EXISTS food
- **Example:** CREATE DATABASE IF NOT EXISTS food
- This will create a database named 'food' and if it already exists, it does not show any errors, and just moves on.
- 'IF NOT EXISTS' is added to prevent an error showing up if the cars database already exists.

#### SHOW DATABASES
- List the available databases

#### DROP DATABASE
- **Example:** DELETE DATABASE food
- Deletes the database named 'food'.
- Deletes a database.

#### USE DATABASE
- **Example:** USE food
- Selects the database named 'food'. So all commands/queries will be applied to the food database.
- Selects the database where you want to perform commands/queries.

## What is a Datatype?
- A datatype specifies the type of data a column can hold in a table.

### Commands learned

#### VARCHAR
#### TEXT
#### INTEGER
#### ENUM

## What is a Table
- A structured format for organizing data within a database, consisting of rows and columns that form a grid-like structure.

### Commands learned

#### CREATE TABLE
- **Example:** CREATE TABLE breakfast_menu
- Creates a table named 'breakfast_menu'.
- Creates a table.

#### DROP TABLE
- **Example:** DROP TABLE breakfast_menu
- Deletes the table named 'breakfast_menu'.
- Deletes the table.

#### NOT NULL
- This is a constraint used in a table to ensure a column does not have NULL values.
- It prevents the NULL value from being added to the specified column during table creation or when updating the table column.
- PRIMARY KEY columns do not need the constraint added when creating the table, as it added automatically. 

#### DEFAULT
- This is a constraint used during table creation to proactively insert a default value in a column where no value is added during an INSERT operation.
- INSERT is used to add values to a table.

#### PRIMARY KEYS
- This is a constraint that uniquely identifies the records in each row in a table.
- The PRIMARY KEY in a table cannot have a NULL value.
- The PRIMARY KEY cannot have duplicates in the same table.
 
#### AUTO_INCREMENT
- This is a feature connected to the PRIMARY KEY constraint.
- It is used to automatically increment the value of the PRIMARY KEY for each row since duplicate values are not allowed for a PRIMARY KEY.

## How to Insert Data Into a Table?

#### INSERT INTO () VALUES ()

## How to view a Table?

#### SELECT * FROM
