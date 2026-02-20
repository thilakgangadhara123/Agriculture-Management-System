🌾 Agriculture Management System

A web-based Agriculture Management System developed using Java Servlets, JSP, JDBC, MySQL, HTML, CSS, and Bootstrap.

This application allows farmers to register, log in, add crop details, manage crop sales, and maintain agricultural records digitally. The system reduces manual paperwork and improves efficiency through database-driven automation.

📌 Project Overview

The Agriculture Management System is designed to:

Digitally manage farmer records

Store and update crop information

Handle crop purchases

Maintain real-time data in MySQL database

Provide a simple and responsive user interface

This project follows a basic MVC (Model-View-Controller) architecture using Servlets and JSP.

🛠️ Technologies Used

Backend: Java Servlets, JSP
Database: MySQL
Connectivity: JDBC
Frontend: HTML, CSS, Bootstrap
Server: Apache Tomcat
IDE: Eclipse

🚀 Features

👨‍🌾 Farmer Registration

🔐 Secure Login Authentication

🌱 Add Crop Details

🛒 Buy Crop Functionality

📊 View Crop Records

🔄 Automatic Quantity Update After Purchase

💾 Database Integration using JDBC

📱 Responsive UI Design

🗂️ Project Structure
Agriculture-Management-System/
│
├── src/
│   ├── LoginServlet.java
│   ├── RegisterServlet.java
│   ├── AddCropServlet.java
│   ├── BuyCropServlet.java
│   ├── ViewCropServlet.java
│   ├── DBConnection.java
│
├── WebContent/
│   ├── css/
│   │   └── style.css
│   │
│   ├── images/
│   │
│   ├── farmerLogin.jsp
│   ├── farmerRegister.jsp
│   ├── farmerHome.jsp
│   ├── addCrop.jsp
│   ├── buyCrop.jsp
│   ├── viewCrop.jsp
│   ├── index.jsp
│   │
│   └── WEB-INF/
│       └── web.xml
│
├── lib/
│   └── mysql-connector-java.jar
│
└── agriculture.sql
🗄️ Database Setup
1️⃣ Create Database
CREATE DATABASE agriculture;
USE agriculture;
2️⃣ Create Farmer Table
CREATE TABLE farmer (
    id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(100) NOT NULL,
    mobile_number VARCHAR(15) NOT NULL,
    username VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(100) NOT NULL
);
3️⃣ Create Crop Table
CREATE TABLE crop (
    id INT PRIMARY KEY AUTO_INCREMENT,
    crop_name VARCHAR(100) NOT NULL,
    crop_type VARCHAR(100) NOT NULL,
    quantity INT NOT NULL,
    price DECIMAL(10,2) NOT NULL
);
4️⃣ Insert Sample Data (Optional)
INSERT INTO crop (crop_name, crop_type, quantity, price)
VALUES 
('Rice', 'Grains', 100, 30),
('Mango', 'Fruit', 50, 120),
('Wheat', 'Grains', 200, 25);
⚙️ How to Run the Project

Install Java JDK

Install Apache Tomcat Server

Install MySQL

Import the project into Eclipse (Dynamic Web Project)

Add MySQL Connector JAR to lib folder

Configure database credentials in DBConnection.java

Run the project on Tomcat Server

Open in browser:

http://localhost:8080/Agriculture-Management-System/
🔄 Application Workflow

Farmer registers → Data stored in farmer table

Farmer logs in → Credentials validated from database

Farmer adds crop → Data inserted into crop table

Buyer purchases crop → Quantity updated automatically

User views crop details → Data retrieved using JDBC

🏗️ Architecture Used

MVC Pattern (Basic Implementation)

Layered Structure (Servlet → JDBC → Database)

Client-Server Architecture

📸 Screenshots

Create a folder named screenshots in your project and add images inside it.

![Login Page](screenshots/farmer-login.png)
![Registration Page](screenshots/farmer-registration.png)
![Home Page](screenshots/farmer-home.png)
![Add Crop](screenshots/add-crop.png)
![Buy Crop](screenshots/buy-crop.png)
![View Crop](screenshots/view-crop.png)
🎯 Project Objective

Digital transformation of agricultural data management

Reduce manual record maintenance

Improve data accuracy and accessibility

Provide secure and structured crop management

🔮 Future Enhancements

Admin Dashboard

Purchase History Tracking

Payment Gateway Integration

Weather API Integration

Mobile Application Version

Role-Based Authentication

👨‍💻 Developed By

Thilak Gangadhara
Java Full Stack Developer
