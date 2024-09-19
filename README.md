# CASE STUDY: HOW DOES A BIKE SHARE NAVIGATE SPEEDY SUCCESS?

<p align="center">
  <img src="https://media.licdn.com/dms/image/C4D12AQEKvEAZhAld7Q/article-cover_image-shrink_600_2000/0/1650821003822?e=2147483647&v=beta&t=YgU5UFEs4bZtJ6lAA3-AR_4eMpvuaYbyDYuT3SaHF_U" />
</p>

## Table of Content

 - [Introduction](#introduction)
 - [Scenario](#scenario)
 - [About the company](#company)
 - [My Solutions](#solutions)
 - [Bottom Line](#bottomline)

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

- Download and View my analyze in `Excel` here: [Data Exploration Analysis - Excel.xlsx](https://github.com/truonglearncode/Google-Google-Data-Analytics-Professional-Certificate-Capstone/blob/main/Data%20Exploration%20Analysis%20-%20Excel.xlsx)
- View my analyze in `Python` here: [Data Exploration Analysis - Python.ipynb](https://github.com/truonglearncode/Google-Google-Data-Analytics-Professional-Certificate-Capstone/blob/main/Data%20Exploration%20Analysis%20-%20Python.ipynb)
- View my analyze in `SQL` here: [Data Exploration Analysis - SQL.sql](https://github.com/truonglearncode/Google-Google-Data-Analytics-Professional-Certificate-Capstone/blob/main/Data%20Exploration%20Analysis%20-%20SQL.sql)

### 5. Share

**Q1: Current differrent of each member? Quantity and Percentage?**

- 66.13% of the members are categorized as "member".

- 33.87% of the members are categorized as "casual".

=> Company goal is convert casual customer to member customer but first of all need to keep our member customer always using service and avoid risk to lost there customer in the future

**Q2: Different about using type of bike by each member? Quantity and Percentage?**

`Classic bike usage:`

- Members use classic bikes more frequently than casual users.

- 67.03% of members use classic bikes, while only 32.97% of casual users do.

`Electric bike usage:`

- Members and casual users have similar usage patterns for electric bikes.

- 65.22% of members use electric bikes, and 34.78% of casual users do.

`Overall bike usage:`

- Members are more likely to use bikes overall compared to casual users.

- This is evident from the higher percentages of both classic and electric bike usage among members.

**Q3. How many member of each type using bike service each month? Calculate Percentage for each type of member each month?**

- `Members` customer consistently have higher usage rates compared to casual users throughout the half of year.

- For `Member` customers have the highest usage occurs in January and tend to decrease in following month. Opposite with `Member customer`, `Casual` customer have the lowest usage occurs in first month of the year and tend to increase in following month.

- I need to find out what things make usage of each customer so different and how i can do to avoid this situation in the future. Then I can predict fluctuation of each customer segment using bike service in the end of the year

**Q4. How many member of each type using bike service each day of week? Calculate Percentage for each type of member each day of week?**

- In weekday, both customer segment have a similar usage of using bike service around 70% for `Member customer` and around 30% for `Casual customer`. But this metrics is verry diffence in weekend. 
- With `Member customer`, they want to using time in weekend for family, friend, hang out so this make `Member customer` don' like using bike service in weekend and usage of them tend to decrease from Friday to Sunday. 
- With `Casual customer`, they want to using bike more often in weekend because they want a bike for transportation or using bike for exercise so usage of them tend to increase in weekend. Good new, in sunday usage of both almost equaly around 50%

**Q5. Overall average duration compare with Avg duration on week day by each member?**

- Average duration of 'Casual customer` is 27 minutes

- Average duration of 'Member customer` is 13 minutes

- Both member and casual usage times increase on Saturday and Sunday, indicating longer rides or trips on weekends.

**Q6. Number of Members Using Bike Service Each Hour of the Day? Percentage of Members Using Bike Service for Each Hour? Overall Percentage for the Entire Day?**

`Peak usage:`

- The highest usage occurs between 4 PM and 5 PM, with a peak of 10.50% at 5 PM.

- Usage gradually increases from the early morning hours, reaching its peak in the afternoon.

`Off-peak usage:`

- The lowest usage occurs in the early morning hours, with a minimum of 0.25% at 4 AM.

- Usage remains relatively low throughout the night and early morning.

`Consistent usage:`

- The usage percentage remains relatively consistent throughout the day, with minor fluctuations.

- This suggests a steady demand for the service throughout the day.

**Q7. Most popular start station for each member is?**

Top 3 start station `Casual customer` more often using bike service
- Streeter Dr & Grand Ave
- DuSable Lake Shore Dr & Monroe St
- Michigan Ave & Oak St

Top 3 start station `Members customer` more often using bike service
- Clinton St & Washington Blvd
- Kingsbury St & Kinzie St
- Clinton St & Madison St

**Q8. Most popular end station for each member is?**

Top 3 end station `Casual customer` more often using bike service
- Streeter Dr & Grand Ave
- DuSable Lake Shore Dr & Monroe St
- Michigan Ave & Oak St

Top 3 end station `Members customer` more often using bike service
- Clinton St & Washington Blvd
- Kingsbury St & Kinzie St
- Clinton St & Madison St

**Q9. Most popular route for each member is?**

Top 3 route `Casual customer` more often using bike service
- From Streeter Dr & Grand Ave to Streeter Dr & Grand Ave
- From DuSable Lake Shore Dr & Monroe St to DuSable Lake Shore Dr & Monroe St
- From DuSable Lake Shore Dr & Monroe St to Streeter Dr & Grand Ave

Top 3 route `Members customer` more often using bike service
- From State St & 33rd St to Calumet Ave & 33rd St
- From University Ave & 57th St to Ellis Ave & 60th St
- From Calumet Ave & 33rd St to State St & 33rd St

### 6. Act

Here is some my recomendation for future marketing stategy for goal is convert `Casual customer` to `Member customer` and another goal I need to reach is keep 'Member customer' more often using service of our company

- First of all, we need go into digital marketing field include using website, application, social media flatform to advertise our service to everone who need using our service. Sevaral option we need to discus is.
- Using social media flatfrom such as Facebook, Instagram, TikTok to advertise our service by using image, text, video to potential customers. By this way, we can provide to our customer what benefit of our service, we can update information customer need about member plan, news, context,...
- Develop application like mobile app and website to help customer easy to find any information customer need, include this sevaral feature like map for customer easy to find closest station to using service, remind customer drive routine each day by app notification, remind time top stop , payment system can help customer easy to rent a bike or make a reservation by cash on this app. Moreover we can include health service to this application to track customer health and suggest sevaral excersice for each customer conditions,...

For `Casual customer`

- We using social media to encourage them in time this customer seg mement less using service is: 6 - 8 AM, and 5-8 PM. We can highlight what benefit of using service this time is more effective for customer about overall health, mental health, relaxation and more. Moreover, we need provide them what values `casual customer` will get after upgrade to `member customer`. By this way we can improve `casual customer` upgrade to `member customer`

- Using influencer in each social media flatform make our company easy make connection with potential customer. We can using them to evualate and share their experience of our service about rental process, customer experience, what values customer get during using our service, what difference betwen `casual plan` and `member plan`. This way we can connect our customer closely and naturally and easy to convert them to `member customer`

- Create sevaral context about drive bike on festival or donation thoughout the year. This way make our company more attention and encourage everyone to joins and offer them special offer if who want to become a `member` of our company.

- Often hold an event in popular station, in this event we can explain what values of member plan can help `casual customer` improve thier life and health. In order hand, gift and special offer must have for this event

For `Member customer`

- We need to provide them mobile application with sevaral feature can help them improve thier life and health such as optimize thier time while using bike, tracking health metrics and make suggestion, maps can show closest station for using service, caculate best way for stranportation, payment process make more easier, suggest route for ride, remind customer for daily routine, chat with friend, set schedule,...

- We need to offer Membership Program throughout the year (at least one times a year). In this program our company will hold an event for every our `member customer` who can joins, talk with each other and have a chance to get a free gift (big values) in the end of event. We can conect our  `member customer` together to share a story, ride journey and we can collect feedback of this segment to improve our service in the future

- Same with `Casual customer`, often hold an event in popular station, this time we takecare them by giving them some free servive about water, snack, voucher discount, solve their concern, more and more activity in this event make sure customer experience using bike service better and better

## Bottom Line <a class = 'anchor' id = 'bottomline'></a>

Hi there

I have completed this case study I want to thanks Google and Coursera give me a great opportunity to learn and practice with real work project this very helpful for me in future. But now as beginer I feel so confident and knowledgeable to find a first job of data analytics field. After this casestudy I learned a lot of thing such as

- How to ask right question, effective question to solve business problem
- How to use analytic software like Excel, Azure Data Studio,Anaconda,Jupyter Notebook, Google Collab and programing environment like Python, SQL
- How to create report or dashboard by using Excel, Power Point, Power BI,...
- How to findout insight, improve them to recommendation and make decision base on data
- Some thing else about data storing, data preprocessing, data cleanning, data structure, more and more

Im very excited about anything I have learn thoughtout courses and casestudy but I need to learn more about this field in future to better and better than today. So now thanks for viewing my repositories. Should you have any inquiries or require additional information regarding this project, please feel free to reach out to me. I am available to provide any necessary assistance

Truong Ngo

Thanks
