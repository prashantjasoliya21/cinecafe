# CineCafe: Online Movie Ticket Booking System

CineCafe is a comprehensive online platform designed during a college project in 2020, for booking movie tickets effortlessly. Built using ASP.NET and C#, it features a dual-interface system: an admin portal for theater management and a customer-facing site for browsing and booking movie tickets.

## Features

### Admin Portal
- **Theater Registration:** Register new theaters along with their details.
- **Screen Management:** Add and manage screens within registered theaters.
- **Movie Management:** Add movies to the system, specifying details like genres, runtimes, and synopsis.
- **Show Management:** Schedule shows by linking movies, screens, and showtimes.
- **Layout Management:** Customize and manage seating arrangements and layouts for different screens.

### Customer Site
- **Movie Browsing:** View available movies and upcoming releases.
- **Show Selection:** Choose shows based on time, date, and theater preferences.
- **Seat Selection:** Pick seats based on personal preference and availability.
- **Payment Gateway:** Securely process payments for ticket bookings.

## Technologies Used
- **ASP.NET:** Used for building the core framework of the web application.
- **C#:** Serves as the backend programming language.
- **SQL Server:** Manages database operations for storing theater, movie, and booking details.
- **HTML/CSS:** Used for crafting the frontend of the web application.

## Screenshots
<img src="https://github.com/user-attachments/assets/e11f577b-2065-4898-94ff-69b39a361c22" alt="Description of Image" width="400"/>
<img src="https://github.com/user-attachments/assets/522d836c-a77f-4d06-8bc8-e10fb0144d86" alt="Description of Image" width="400"/>
<img src="https://github.com/user-attachments/assets/2475a9a0-b5df-4776-8e45-5b51ec2322b1" alt="Description of Image" width="400"/>
<img src="https://github.com/user-attachments/assets/e55e88e2-5953-4928-a33a-f9c52be06537" alt="Description of Image" width="400"/>



## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

What things you need to install the software and how to install them:

```bash
- ASP.NET
- Visual Studio (configured for web development)
- SQL Server
```

## Installing
A step-by-step series of examples that tell you how to get a development environment running:

1. **Clone the repository:**
```bash
git clone https://github.com/prashantjasoliya21/cinecafe.git
```

2. **Open the solution in Visual Studio.**
- Navigate to the cloned directory and open the **CineCafe.sln** file.


3. **Restore NuGet packages to resolve any dependencies.**
- Right-click on the solution name in the solution explorer and select 'Restore NuGet Packages'.


4. **Set up the database.**
- Use the SQL script provided in the DatabaseSetup.sql file to set up your database with the initial schema and data required.


5. **Configure the connection string.**
-Update the connection string in the web.config file with your SQL Server details.


6. **Run the application.**
Press F5 to start debugging the application. Visual Studio will host it on a local server.
