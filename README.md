# Library_Management_System_SQL

# Overview
This project focuses on all deatils of library  analysis for a Library Management System using MySQL to uncover valuable business insights.
The analysis explores multiple aspects of store operations — including books,borrowers details, library branches, book_loans ,book_copies, publishers — through advanced SQL queries and meaningful data interpretation.
The goal of this project is to demonstrate the ability to clean, structure, and query relational databases to solve real-world business problems and provide data-driven recommendations for improving performance.

The Library Management System is a database project designed to manage the daily operations of a library.
It helps in maintaining information about books, borrowers, loans, and branches efficiently using SQL queries.

# Database Design
The project includes the following main tables:
tbl_book – Stores information about books (title, author, publisher, etc.)
tbl_branch – Details of each library branch
tbl_borrower – Records of people who borrow books
tbl_book_loans – Tracks which book is loaned to which borrower and the due date
tbl_book_copies – Number of copies of each book available at branches
tbl_publisher – Information about publishers

 # Technologies Used

SQL Server / MySQL

Database Schema Design

Joins, Views, Stored Procedures, and CTEs

Normalization & Constraints

# FINAL BUSINESS INSIGHTS
Book Availability & Demand 
• “'The Name of the Wind’ is the most borrowed .6 books were borrowed across all branches.
Borrower Insights 
• Some borrowers (e.g., Jane Smith, Angela Thompson, Haley Jackson) have no active loans. 
• High-activity borrowers (e.g., Tom Li – 7 loans) drive circulation trends.
 Branch-Level Trends 
• Loan activity varies across branches, highlighting different usage patterns. 
Operational Insights 
• Total 20 books, 16 publishers, 8 borrowers in system. 
• Enables tracking of popular titles, branch demand, and borrower behavior for better inventory planning
# RECOMMENDATIONS
Optimize Inventory 
   • Add more copies of “'The Name of the Wind” at high-demand branches.
Borrower Engagement 
   • Target high-activity borrowers (e.g., Tom Li) with loyalty programs. 
   • Encourage inactive borrowers (e.g., Jane Smith, Angela Thompson) through reminders/promotions. 
  Branch Performance Monitoring 
     • Track loan activity per branch to identify under-utilized libraries. 
     • Use insights to allocate resources effectively
     
 Generate reports such as:
Most borrowed books
Borrowers with no books checked out

Branch-wise book availability
