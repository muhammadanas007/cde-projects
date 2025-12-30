📊 End-to-End Data Analysis Project – Netflix Dataset
📌 Overview

This project is part of my Data Engineering training at Saylani Mass IT Training (SMIT). It demonstrates an end-to-end data analysis workflow using the Netflix Movies & TV Shows dataset, covering data ingestion, cleaning, transformation, and analysis using Python, Pandas, and SQL.

The project focuses on applying real-world data engineering practices to extract insights from streaming platform data.

🏗️ Project Architecture
![Project Architecture.png](https://github.com/muhammadanas007/cde-projects/blob/main/Netflix%20Data%20Cleaning%20and%20Analysis%20Project/architecture/Netflix%20ETL%20diagram.png)

🛠️ Tools & Technologies

Python – Data ingestion and scripting

Pandas – Data cleaning and preprocessing

SQL – Data storage, transformation, and analysis

Kaggle Dataset – Data source (Netflix Movies & TV Shows)

🔄 Project Workflow
1️⃣ Data Acquisition

Downloaded the Netflix Movies & TV Shows dataset from Kaggle.

Loaded the CSV file into the Python environment.

2️⃣ Data Cleaning & Preprocessing

Cleaned and processed data using Python and Pandas.

Handled missing and null values.

Standardized data types (dates, numeric fields).

Removed duplicate records.

Cleaned text fields (country, genre, cast, director).

3️⃣ Data Analysis

Loaded the cleaned data into a SQL database.

Performed analytical queries using SQL.

Answered key business questions related to Netflix content trends.

📈 Sample Analysis & Insights

The following analytical tasks were performed using SQL after cleaning and transforming the Netflix dataset:

Populated missing values in the country and duration columns to ensure data completeness and accurate analysis.

Calculated, for each director, the number of Movies and TV Shows in separate columns, considering only those directors who have created both Movies and TV Shows.

Identified the country with the highest number of Comedy movies available on Netflix.

For each year (based on the date added to Netflix), determined the director with the maximum number of movies released.

Ordered the results by year and number of movies released (descending) to highlight trends over time.

Computed the average duration of movies for each genre, enabling genre-level runtime analysis.

Identified directors who have created both Horror and Comedy movies, displaying:

Director name

Number of Horror movies

Number of Comedy movies

These queries provide insights into content trends, director performance, genre distribution, and regional dominance within the Netflix catalog.

🎯 Key Learnings

Designing an end-to-end data analysis pipeline

Cleaning and transforming real-world datasets

Writing efficient and optimized SQL queries

Generating insights from structured data

Applying data engineering best practices