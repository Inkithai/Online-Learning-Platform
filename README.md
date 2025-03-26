# Course Management System

## Overview

The Course Management System is a dynamic web application designed for managing course enrollment in an academy or institution. It is built using Angular for the frontend, Node.js for the backend, and MySQL for database management. The system allows seamless handling of courses, students, and administrative tasks like course creation, student enrollment, and more.

## Features & Functionality

- **Admin Authentication**: Secure login system for course administrators using JWT tokens.
- **Course Management**: Admin users can add, update, and delete courses.
- **Student Enrollment**: Admin can track student enrollments across different courses.
- **Real-Time UI**: The frontend is built with Angular Material for a responsive, interactive user interface.
- **Database-Driven**: MySQL is used for persistent data storage and management.
- **Modular Architecture**: The system follows a modular architecture that separates the frontend, backend, and database for easier maintenance and scalability.
- **Payment**: Download bills

## Tech Stack

- **Frontend**: Angular , Angular Material UI
- **Backend**: Node.js  (Express.js)
- **Database**: MySQL
- **Package Manager**: npm  

## Database Setup

1. Import the provided `.sql` file into MySQL to initialize the database.
2. Ensure your MySQL server is running and configured correctly.

## Backend Setup

1. Navigate to the `backend` folder in the project directory.
2. Install the backend dependencies by running:

    ```bash
    npm install
    ```

3. Start the backend server by running:

    ```bash
    npm start
    ```

   The server will run on the specified port (e.g., `http://localhost:3000`).

## Frontend Setup

1. Navigate to the `frontend` folder in the project directory.
2. Install the frontend dependencies by running:

    ```bash
    npm install
    ```

3. Start the Angular development server by running:

    ```bash
    ng serve -o
    ```

   This will automatically open the project in your default browser at `http://localhost:4200`.

## Admin Login Credentials

To access the admin panel, use the following credentials:

- **Email**: abcd@gmail.com
- **Password**: 123

## Design Decisions

- **Frontend**: Angular was chosen for its scalability, rich ecosystem, and support for building single-page applications (SPAs). Angular Material was used to enhance the UI with ready-made, responsive components.
  
- **Backend**: Node.js and Express.js were chosen for their non-blocking, event-driven architecture, making it suitable for building fast and scalable applications. Express.js provides a lightweight framework that simplifies routing and middleware handling.

- **Database**: MySQL was selected due to its robustness, scalability, and widespread use. The use of an ORM like Sequelize ensures efficient management of the database schema, relationships, and queries.

- **Authentication**: JWT tokens were chosen for user authentication because they are stateless, scalable, and can be easily integrated into modern web applications.

- **Modular Architecture**: The system follows a modular architecture to separate concerns across the frontend, backend, and database layers, making it easier to maintain and scale in the future.

## Future Enhancements

- Integrate email notifications for enrollments and updates.
- Enhance course categorization and filtering.

## Testing & Documentation

The application does not currently include automated tests. In the future, unit and integration tests can be added using tools like Jasmine and Mocha for the frontend and backend. For now, the system has been documented to explain the setup and functionalities.

## Conclusion

This project demonstrates a full-stack application for managing an online learning platform, covering all required functionalities such as user authentication, course management, student enrollment, and admin functionalities. The system is designed to be scalable, efficient, and maintainable, adhering to best practices in modern web development.

## Instructions for Running the Application

1. **Clone the repository**:

    ```bash
    git clone https://github.com/Inkithai/Online-Learning-Platform
    ```

2. **Follow the setup instructions** above to configure the database, backend, and frontend.

3. Access the application at `http://localhost:4200` for the frontend and `http://localhost:3000` for the backend.

---
This document provides the necessary instructions to set up, run, and test the Course Management System. For further questions or clarifications, feel free to reach out.
