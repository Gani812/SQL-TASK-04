# SQL Internship - Task 4: Aggregate Functions and Grouping (MySQL)

# About the Task
In this task, I focused on working with SQL aggregate functions like `SUM`, `COUNT`, and `AVG`, along with `GROUP BY` and `HAVING` clauses. The goal was to practice summarizing and analyzing data stored in a structured relational database.

# Database Used
I used the **RentalDB** database, which is designed to manage rental-related information. It includes the following tables:

- `Owners`: Stores property owner details
- `Properties`: Contains information about rental properties, including rent and availability
- `Locations`: Details about cities and areas
- `Renters`: Contains renter contact information
- `Bookings`: Records of rental bookings made by renters
- `Payments`: Payment information linked to bookings

These tables are interconnected, making it possible to perform detailed analysis using aggregate queries.

# What I Did
As part of this task, I wrote several SQL queries to analyze data by grouping and summarizing it. Some of the key things I worked on include:

- Counting the number of properties owned by each person
- Calculating the total rent collected by city
- Finding the average rent per city
- Grouping bookings by renters to count how many bookings each person made
- Summing up total payments received, categorized by payment method
- Filtering grouped data using `HAVING` (for example, showing only owners with more than one property)
- Rounding off average values to two decimal places
- Counting how many distinct cities have properties listed

These queries helped me understand how to make sense of raw data through summarization and grouping, which is a key part of real-world data analysis.

# Tools Used
- MySQL Workbench

# Files Included
- `Schema.sql` – Contains all the SQL queries I wrote for this task
- `README.md` – This file, with a summary of what I learned and implemented
