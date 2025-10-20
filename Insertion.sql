use Library_management;
INSERT INTO tbl_publisher (publisher_PublisherName, publisher_PublisherAddress, publisher_PublisherPhone) VALUES
('DAW Books', '375 Hudson Street, New York, NY 10014', '212-366-2000'),
('Viking', '375 Hudson Street, New York, NY 10014', '212-366-2000'),
('Signet Books', '375 Hudson Street, New York, NY 10014', '212-366-2000'),
('Chilton Books', 'Not Available', 'Not Available'),
('George Allen & Unwin', '83 Alexander Ln, Crows Nest NSW 2065, Australia', '-8466'),
('Alfred A. Knopf', 'The Knopf Doubleday Group Domestic Rights, 1745 Broadway, New York, NY 10019', '212-940-7390'),
('Bloomsbury', 'Bloomsbury Publishing Inc., 1385 Broadway, 5th Floor, New York, NY 10018', '212-419-5300'),
('Shinchosa', 'Oga Bldg. 8, 2-5-4 Sarugaku-cho, Chiyoda-ku, Tokyo 101-0064 Japan', '-12006'),
('Harper and Row', 'HarperCollins Publishers, 195 Broadway, New York, NY 10007', '212-207-7000'),
('Pan Books', '175 Fifth Avenue, New York, NY 10010', '646-307-5745'),
('Chalto & Windus', '375 Hudson Street, New York, NY 10014', '212-366-2000'),
('Harcourt Brace Jovanovich', '3 Park Ave, New York, NY 10016', '212-420-5800'),
('W.W. Norton', 'W. W. Norton & Company, Inc., 500 Fifth Avenue, New York, New York 10110', '212-354-5500'),
('Scholastic', '557 Broadway, New York, NY 10012', '800-724-6527'),
('Bantam', '375 Hudson Street, New York, NY 10014', '212-366-2000'),
('Picador USA', '175 Fifth Avenue, New York, NY 10010', '646-307-5745');


-- Inserting into tblbook
INSERT INTO tbl_book (book_BookID, book_Title, book_PublisherName) VALUES
(1, 'The Name of the Wind', 'DAW Books'),
(2, 'It', 'Viking'),
(3, 'The Green Mile', 'Signet Books'),
(4, 'Dune', 'Chilton Books'),
(5, 'The Hobbit', 'George Allen & Unwin'),
(6, 'Eragon', 'Alfred A. Knopf'),
(7, 'A Wise Mans Fear', 'DAW Books'),
(8, 'Harry Potter and the Philosophers Stone', 'Bloomsbury'),
(9, 'Hard Boiled Wonderland and The End of the World', 'Shinchosa'),
(10, 'The Giving Tree', 'Harper and Row'),
(11, 'The Hitchhikers Guide to the Galaxy', 'Pan Books'),
(12, 'Brave New World', 'Chalto & Windus'),
(13, 'The Princess Bride', 'Harcourt Brace Jovanovich'),
(14, 'Fight Club', 'W.W. Norton'),
(15, 'Holes', 'Scholastic'),
(16, 'Harry Potter and the Chamber of Secrets', 'Bloomsbury'),
(17, 'Harry Potter and the Prisoner of Azkaban', 'Bloomsbury'),
(18, 'The Fellowship of the Ring', 'George Allen & Unwin'),
(19, 'A Game of Thrones', 'Bantam'),
(20, 'The Lost Tribe', 'Picador USA');

-- Inserting into tblbookauthors
INSERT INTO tbl_book_authors (book_authors_BookID, book_authors_AuthorName) VALUES
(1, 'Patrick Rothfuss'),
(2, 'Stephen King'),
(3, 'Stephen King'),
(4, 'Frank Herbert'),
(5, 'J.R.R. Tolkien'),
(6, 'Christopher Paolini'),
(6, 'Patrick Rothfuss'),
(8, 'J.K. Rowling'),
(9, 'Haruki Murakami'),
(10, 'Shel Silverstein'),
(11, 'Douglas Adams'),
(12, 'Aldous Huxley'),
(13, 'William Goldman'),
(14, 'Chuck Palahniuk'),
(15, 'Louis Sachar'),
(16, 'J.K. Rowling'),
(17, 'J.K. Rowling'),
(18, 'J.R.R. Tolkien'),
(19, 'George R.R. Martin'),
(20, 'Mark Lee');

-- Insert into tbllibrarybranch
INSERT INTO tbl_library_branch (library_branch_BranchName, library_branch_BranchAddress) VALUES
('Sharpstown', '32 Corner Road'),
('Central', '491 3rd Street'),
('Saline', '40 State Street'),
('Ann Arbor', '101 South University');


-- insert into 
select * from tbl_book_copies;
select * from tbl_borrower;


INSERT INTO tbl_book_loans 
(book_loans_BookID, book_loans_BranchID, book_loans_CardNo, book_loans_DateOut, book_loans_DueDate)
VALUES
(1,1,100,'2018-01-01','2018-02-02'),
(2,1,100,'2018-01-01','2018-02-02'),
(3,1,100,'2018-01-01','2018-02-02'),
(4,1,100,'2018-01-01','2018-02-02'),
(5,1,102,'2018-03-01','2018-03-02'),
(6,1,102,'2018-03-01','2018-03-02'),
(7,1,102,'2018-03-01','2018-03-02'),
(8,1,102,'2018-03-01','2018-03-02'),
(9,1,102,'2018-03-01','2018-03-02'),
(11,1,102,'2018-03-01','2018-03-02'),
(12,2,105,'2017-12-12','2018-12-01'),
(10,2,105,'2017-12-12','2017-12-01'),
(20,2,105,'2018-03-02','2018-03-03'),
(18,2,105,'2018-05-01','2018-05-02'),
(19,2,105,'2018-05-01','2018-05-02'),
(19,2,100,'2018-03-01','2018-03-02'),
(11,2,106,'2018-07-01','2018-07-02'),
(1,2,106,'2018-07-01','2018-07-02'),
(2,2,100,'2018-07-01','2018-07-02'),
(3,2,100,'2018-07-01','2018-07-02'),
(5,2,105,'2017-12-12','2018-12-01'),
(4,3,103,'2018-09-01','2018-09-02'),
(7,3,102,'2018-03-01','2018-03-02'),
(17,3,102,'2018-03-01','2018-03-02'),
(16,3,104,'2018-03-01','2018-03-02'),
(15,3,104,'2018-03-01','2018-03-02'),
(15,3,107,'2018-03-01','2018-03-02'),
(14,3,104,'2018-03-01','2018-03-02'),
(13,3,107,'2018-03-01','2018-03-02'),
(13,3,102,'2018-03-01','2018-03-02'),
(19,3,102,'2017-12-12','2018-12-01'),
(20,4,103,'2018-03-01','2018-03-02'),
(1,4,102,'2018-12-01','2018-12-02'),
(3,4,107,'2018-03-01','2018-03-02'),
(18,4,107,'2018-03-01','2018-03-02'),
(12,4,102,'2018-04-01','2018-04-02'),
(11,4,103,'2018-01-15','2018-02-15'),
(9,4,103,'2018-01-15','2018-02-15'),
(7,4,107,'2018-01-01','2018-02-02'),
(4,4,103,'2018-01-01','2018-02-02'),
(1,4,103,'2017-02-02','2018-02-03'),
(20,4,103,'2018-03-01','2018-03-02'),
(1,4,102,'2018-12-01','2018-12-02'),
(3,4,107,'2018-01-13','2018-02-13'),
(18,4,107,'2018-01-13','2018-02-13'),
(12,4,102,'2018-01-14','2018-02-14'),
(11,4,103,'2018-01-15','2018-02-15'),
(9,4,103,'2018-01-15','2018-02-15'),
(7,4,107,'2018-01-19','2018-02-19'),
(4,4,103,'2018-01-19','2018-02-19'),
(1,4,103,'2018-01-22','2018-02-22');

