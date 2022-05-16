# employee-tracker

# Description

Business owners often need to manage the inner workings of their companies, specifically the departments, roles and companies within those businesses. As a result, keeping track of information stored in database is a critical component of running daily operations, and one of the easiest ways a business owner can interact with their stored information is through a content management system (CMS).

Enter the purpose of this project: utilize Node.js, Express.js, Inquirer, and MySQL to create a command-line application to manage a company's database. The application is easily installed and initialized and includes the following features:

WHEN I start the application THEN I am presented with the following options: view all departments, view all roles, view all employees, add a department, add a role, add an employee, and update an employee role
WHEN I choose to view all departments THEN I am presented with a formatted table showing department names and department ids
WHEN I choose to view all roles THEN I am presented with the job title, role id, the department that role belongs to, and the salary for that role
WHEN I choose to view all employees THEN I am presented with a formatted table showing employee data, including employee ids, first names, last names, job titles, departments, salaries, and managers that the employees report to
WHEN I choose to add a department THEN I am prompted to enter the name of the department and that department is added to the database
WHEN I choose to add a role THEN I am prompted to enter the name, salary, and department for the role and that role is added to the database
WHEN I choose to add an employee THEN I am prompted to enter the employee’s first name, last name, role, and manager, and that employee is added to the database
WHEN I choose to update an employee role THEN I am prompted to select an employee to update and their new role and this information is updated in the database

# Installation

To install this application, first clone the repo to your local machine. Then, you will need to install the node dependencies/modules which can be done by running the npm install command in your terminal/bash shell.

# Usage

To use this application, you first need to have MySQL installed, and then initialize the database:


Once this has been completed, you are ready to use the application, so open up the repo's folder in your terminal/bash shell and run the command node server.js or npm run start.


You will then be informed that the program has started, and will then be given prompts and can select from various options the information you would like to request or modify.

Here is an example of the application from the CLI:

A full video walkthrough can be found _____.

# Credits

Collaborators include the instructor, TAs, and fellow classmates of the UCF Coding Bootcamp (Spring 2022).

# License

Copyright (c) 2022 Emily Reddy

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.