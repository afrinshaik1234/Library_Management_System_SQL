USE Library_Management;
-- How many copies of the book titled "The Lost Tribe" are owned by the branch "Sharpstown":
SELECT b.book_Title, lb.library_branch_BranchName, bc.book_copies_No_Of_Copies
FROM tbl_book_copies bc
JOIN tbl_book b ON bc.book_copies_BookID = b.book_BookID
JOIN tbl_library_branch lb ON bc.book_copies_BranchID = lb.library_branch_BranchID
WHERE b.book_Title = 'The Lost Tribe'
  AND lb.library_branch_BranchName = 'Sharpstown';


-- How many copies of "The Lost Tribe" are owned by each library branch
SELECT b.book_Title, lb.library_branch_BranchName, bc.book_copies_No_Of_Copies
FROM tbl_book_copies bc
JOIN tbl_book b ON bc.book_copies_BookID = b.book_BookID
JOIN tbl_library_branch lb ON bc.book_copies_BranchID = lb.library_branch_BranchID
WHERE b.book_Title = 'The Lost Tribe'
  AND lb.library_branch_BranchName = 'Sharpstown';

  
-- Retrieve the names of all borrowers who do not have any books checked out:
SELECT br.borrower_BorrowerName
FROM tbl_borrower br
LEFT JOIN tbl_book_loans bl ON br.borrower_CardNo = bl.book_loans_CardNo
WHERE bl.book_loans_BookID IS NULL;

-- For each book loaned from Sharpstown with DueDate = '2018-02-03', retrieve title, borrower name, and address:
SELECT b.book_Title, br.borrower_BorrowerName, br.borrower_BorrowerAddress,bl.book_loans_DueDate 
FROM tbl_book_loans bl
JOIN tbl_book b ON bl.book_loans_BookID = b.book_BookID
JOIN tbl_borrower br ON bl.book_loans_CardNo = br.borrower_CardNo
JOIN tbl_library_branch lb ON bl.book_loans_BranchID = lb.library_branch_BranchID
WHERE lb.library_branch_BranchName = 'Sharpstown'
 AND bl.book_loans_DueDate = '2018-02-03'; 
 -- No results because no rec with that due date
  select * from tbl_book_loans;
-- For each library branch, retrieve branch name and total number of books loaned:
SELECT lb.library_branch_BranchName, COUNT(bl.book_loans_BookID) AS TotalBooksLoaned
FROM tbl_book_loans bl
JOIN tbl_library_branch lb ON bl.book_loans_BranchID = lb.library_branch_BranchID
GROUP BY lb.library_branch_BranchName;

-- Borrowers who have more than five books checked out:
SELECT br.borrower_BorrowerName , br.borrower_BorrowerAddress, COUNT(bl.book_loans_BookID) AS BooksCheckedOut
FROM tbl_borrower br
JOIN tbl_book_loans bl ON br.borrower_CardNo = bl.book_loans_CardNo
GROUP BY br.borrower_BorrowerName, br.borrower_BorrowerAddress
HAVING COUNT(bl.book_loans_BookID) > 5;

-- For each book authored by Stephen King, retrieve title and number of copies owned by Central branch:
SELECT b.book_Title, lb.library_branch_BranchName, SUM(bc.book_copies_No_Of_Copies) AS TotalCopies
FROM tbl_book_authors ba
JOIN tbl_book b ON ba.book_authors_BookID = b.book_BookID
JOIN tbl_book_copies bc ON b.book_BookID = bc.book_copies_BookID
JOIN tbl_library_branch lb ON bc.book_copies_BranchID = lb.library_branch_BranchID
WHERE ba.book_authors_AuthorName = 'Stephen King'
  AND lb.library_branch_BranchName = 'Central'
GROUP BY b.book_Title, lb.library_branch_BranchName;

