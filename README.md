# CASE STUDY: HOW DOES A BIKE SHARE NAVIGATE SPEEDY SUCCESS?

<p align="center">
  <img src="https://media.licdn.com/dms/image/C4D12AQEKvEAZhAld7Q/article-cover_image-shrink_600_2000/0/1650821003822?e=2147483647&v=beta&t=YgU5UFEs4bZtJ6lAA3-AR_4eMpvuaYbyDYuT3SaHF_U" />
</p>

## Table of Content

 - [Introduction](#introduction)
 - [Scenario](#scenario)
 - [About the company](#company)
 - [My Solutions](#solutions)
 - [Key Finding and Recommendation](#F&R)

## Introduction <a class = 'anchor' id = 'introduction'></a>

In this casestudy, I will work for a fictional company, Cyclistic, and meet different characters and team members. In order to answer the key business questions,I will follow the steps of the data analysis process: ask, prepare, process, analyze, share, and act. This case will be a tangible way to demonstrate my knowledge and skills to potential employers.

## Scenario <a class = 'anchor' id = 'scenario'></a>

I'm a junior data analyst working in the marketing analyst team at Cyclistic, a bike-share company in Chicago. The director of marketing believes the company’s future success depends on maximizing the number of annual memberships. Therefore, my team wants to understand how casual riders and annual members use Cyclistic bikes differently. From these insights, my team will design a new marketing strategy to convert casual riders into annual members. But first, Cyclistic executives must approve my recommendations, so they must be backed up with compelling data insights and professional data visualizations.

***Characters and teams***

- `Cyclistic`: A bike-share program that features more than 5,800 bicycles and 600 docking stations. Cyclistic sets itself apart by also offering reclining bikes, hand tricycles, and cargo bikes, making bike-share more inclusive to people with disabilities and riders who can’t use a standard two-wheeled bike. The majority of riders opt for traditional bikes; about 8% of riders use the assistive options. Cyclistic users are more likely to ride for leisure, but about 30% use them to commute to work each day.

- `Lily Moreno`: The director of marketing and my manager. Moreno is responsible for the development of campaigns and initiatives to promote the bike-share program. These may include email, social media, and other channels.

- `Cyclistic marketing analytics team`: A team of data analysts who are responsible for collecting, analyzing, and reporting data that helps guide Cyclistic marketing strategy. I joined this team six months ago and have been busy learning about Cyclistic’s mission and business goals, as a junior data analyst, can help Cyclistic achieve them.

- `Cyclistic executive team`: The notoriously detail-oriented executive team will decide whether to approve the recommended marketing program.

## About the company <a class = 'anchor' id = 'company'></a>

In 2016, Cyclistic launched a successful bike-share offering. Since then, the program has grown to a fleet of 5,824 bicycles that are geotracked and locked into a network of 692 stations across Chicago. The bikes can be unlocked from one station and returned to any other station in the system anytime.

Until now, Cyclistic’s marketing strategy relied on building general awareness and appealing to broad consumer segments. One approach that helped make these things possible was the flexibility of its pricing plans: single-ride passes, full-day passes, and annual memberships. Customers who purchase single-ride or full-day passes are referred to as casual riders. Customers who purchase annual memberships are Cyclistic members.

Cyclistic’s finance analysts have concluded that annual members are much more profitable than casual riders. Although the pricing flexibility helps Cyclistic attract more customers, Moreno believes that maximizing the number of annual members will be key to future growth. Rather than creating a marketing campaign that targets all-new customers, Moreno believes there is a very good chance to convert casual riders into members. She notes that casual riders are already aware of the Cyclistic program and have chosen Cyclistic for their mobility needs.

Moreno has set a clear goal: Design marketing strategies aimed at converting casual riders into annual members. In order to do that, however, the marketing analyst team needs to better understand how annual members and casual riders differ, why casual riders would buy a membership, and how digital media could affect their marketing tactics. Moreno and her team are interested in analyzing the Cyclistic historical bike trip data to identify trends

## My Solutions <a class = 'anchor' id = 'solutions'></a>

### 1. ASK

After read a requirement very clearly and undertand problem statement of this case study. I need to follow key problem about What different between annual members and casual riders using company service. To break the problem down I want to think about a lot of question and dive in with dataset to finding and slove this problem. I have 9 question to answer is:

- **Q1. Current differrent of each member? Quantity and Percentage?**

- **Q2. Different about using type of bike by each member? Quantity and Percentage?**

- **Q3. How many member of each type using bike service each month? Calculate Percentage for each type of member each month?**

- **Q4. How many member of each type using bike service each day of week? Calculate Percentage for each type of member each day of week?**

- **Q5. Overall average duration compare with Avg duration on week day by each member?**

- **Q6. Number of Members Using Bike Service Each Hour of the Day? Percentage of Members Using Bike Service for Each Hour? Overall Percentage for the Entire Day?**

- **Q7. Most popular start station for each member is?**

- **Q8. Most popular end station for each member is?**

- **Q9. Most popular route for each member is?**

### 2. Prepare

I choose to work with just half year of 2024 data it very nearly. I download all dataset i need in this [Link](https://divvy-tripdata.s3.amazonaws.com/index.html). This link provided by Google when i entries to solve this case so it very safe for everyone who want to access and practice to solve this casestudy. I download 6 csv files to prepare for analysis is:

- [`202401-divvy-tripdata.csv`](https://github.com/truonglearncode/Google-Google-Data-Analytics-Professional-Certificate-Capstone/blob/main/Bike-Share-Data/202401-divvy-tripdata.csv)
- [`202402-divvy-tripdata.csv`](https://github.com/truonglearncode/Google-Google-Data-Analytics-Professional-Certificate-Capstone/blob/main/Bike-Share-Data/202402-divvy-tripdata.csv)
- [`202403-divvy-tripdata.csv`](https://github.com/truonglearncode/Google-Google-Data-Analytics-Professional-Certificate-Capstone/blob/main/Bike-Share-Data/202403-divvy-tripdata.csv)
- [`202404-divvy-tripdata.csv`](https://github.com/truonglearncode/Google-Google-Data-Analytics-Professional-Certificate-Capstone/blob/main/Bike-Share-Data/202404-divvy-tripdata.csv)
- [`202405-divvy-tripdata.csv`](https://github.com/truonglearncode/Google-Google-Data-Analytics-Professional-Certificate-Capstone/blob/main/Bike-Share-Data/202405-divvy-tripdata.csv)
- [`202406-divvy-tripdata.csv`](https://github.com/truonglearncode/Google-Google-Data-Analytics-Professional-Certificate-Capstone/blob/main/Bike-Share-Data/202406-divvy-tripdata.csv)

I store it in prive local computer with folder named is: [Bike-Share-Data](https://github.com/truonglearncode/Google-Google-Data-Analytics-Professional-Certificate-Capstone/tree/main/Bike-Share-Data) and start to direct them to next step

### 3. Process

In this case, I challange myself with 3 tool popular for analysis is `Excel`, `Python` and `SQL`

- First, I using `Excel` to observate all collumn in dataset before I do anything. I clean and merge them by using DAX in `Excel`. After then, I almost using pivot table to analyze and create visualization on this

- In `SQL`, I use `Azure Data Studio` to write `SQL` query for this casestudy. First, I import all file, observate them before do anything. I using query to clean and analyze this all the time

- This is same thing i do in `Python`. With `Python` enviroment i using `Jupiter Notebook` for this case study. I clean them merge them and analyze them by using necessary libaries, function 

### 4. Analyze

Download and View my analyze in `Excel` here: [Data Exploration Analysis - Excel.xlsx]()
View my analyze in `Python` here: [Data Exploration Analysis - Python.ipynb]()
View my analyze in `SQL` here: [Data Exploration Analysis - SQL.sql]()

### Share



### Act



