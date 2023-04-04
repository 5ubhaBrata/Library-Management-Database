CREATE TRIGGER UpdateAvailableCopiesOnIssue
AFTER INSERT ON IssuedBooks
FOR EACH ROW
UPDATE Books
SET AvailableCopies = AvailableCopies - 1
WHERE BookId = NEW.BookId;


CREATE TRIGGER UpdateAvailableCopiesOnReturn
AFTER INSERT ON ReturnBooks
FOR EACH ROW
UPDATE Books
SET AvailableCopies = AvailableCopies + 1
WHERE BookId = (SELECT BookID FROM IssuedBooks WHERE IssuedID = NEW.IssuedID);

CREATE TRIGGER trg_ReturnBooks_Insert
AFTER INSERT ON ReturnBooks
FOR EACH ROW
INSERT INTO Fine (ReturnID, IssuedID, MemberID, FineAmount)
SELECT NEW.ReturnID, NEW.IssuedID, IssuedBooks.MemberID,
    IF(DATEDIFF(NEW.ReturnDate, IssuedBooks.DueDate) > 0, DATEDIFF(NEW.ReturnDate, IssuedBooks.DueDate) * 5, 0)
FROM IssuedBooks
WHERE IssuedBooks.IssuedID = NEW.IssuedID;

