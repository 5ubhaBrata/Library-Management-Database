# Library-Management-Database
This is a database for managing a library’s books, staff, members, issued and returned books,
and fines. The database contains five tables, including Books, Staffs, Members, IssuedBooks, and
ReturnBooks, and one additional table for storing fine information. Each table has primary keys and
foreign keys to ensure data integrity and several constraints to ensure data quality. The database
is designed to help library staff manage books and memberships, issue and return books, and track
fines for late returns. Following is the ER diagram of the database:

![Untitled(1)](https://user-images.githubusercontent.com/90512710/229703849-f878e808-5b78-4dd1-aa4c-9d1ad578dc13.png)


# Books
The ***Books*** table is used to store information about books in the library. The table contains eight
columns: BookID, Title, Author, Publisher, PublicationDate, ISBN, TotalCopies, and AvailableCopies.
+ BookID: This is the primary key for the table and is used to uniquely identify each book in
the library. The datatype for this column is VARCHAR(5).
+ Title: This column stores the title of each book in the library. The datatype for this column
is VARCHAR(255) and it is marked as NOT NULL.
+ Author: This column stores the name of the author(s) of each book in the library. The
datatype for this column is VARCHAR(255).
Publisher: This column stores the name of the publisher of each book in the library. The
datatype for this column is VARCHAR(255).
+ PublicationDate: This column stores the publication date of each book in the library. The
datatype for this column is DATE and it is marked as NOT NULL.
+ ISBN: This column stores the International Standard Book Number (ISBN) for each book in
the library. The datatype for this column is VARCHAR(20) and it is marked as NOT NULL.
+ TotalCopies: This column stores the total number of copies of each book in the library. The
datatype for this column is INT and it is marked as NOT NULL.
+ AvailableCopies: the number of copies of the book that are currently available for borrowing.
The values of this column will be automatically increase or decrease whenever a book is issued
or returned. Initially it is equal to TotalCopies
# Staffs
The ***Staffs*** table is designed to store information about the library’s staff members, including their
personal details and the date they joined the library and has the following columns:
+ StaffID: The unique identifier for each staff member. This column is the primary key for the
table and has a datatype of VARCHAR(5).
+ Name: The name of the staff member. This column is NOT NULL and has a datatype of
VARCHAR(255).
+ Address: The address of the staff member. This column is NOT NULL and has a datatype
of VARCHAR(255).
+ Phone: The phone number of the staff member. This column is NOT NULL and has a
datatype of VARCHAR(15).
+ Email: The email address of the staff member. This column is NOT NULL and has a datatype
of VARCHAR(255).
+ DoJ: The date of joining of the staff member. This column is NOT NULL and has a datatype
of DATE.
# Members
The ***Members*** table is designed to store information about library members, including their contact
details and membership status. It has the following columns:
+ MemberID: a unique identifier for each member, stored as a string with a maximum length of
5 characters. This column is set as the primary key for the table.
+ Name: the name of the member, stored as a string with a maximum length of 255 characters.
This column does not allow null values.
+ Address: the address of the member, stored as a string with a maximum length of 255 char-
acters. This column does not allow null values.
+ Phone: the phone number of the member, stored as a string with a maximum length of 15
characters. This column does not allow null values.
+ Email: the email address of the member, stored as a string with a maximum length of 255
characters. This column allows null values.
+ MembershipStatus: the status of the member’s membership, stored as an enumerated data
type with two possible values: ’Active’ or ’Not Active’. This column does not allow null
values.
# IssuedBooks
The ***IssuedBooks*** table is designed to store information about books that have been issued to
library members. The table contains the following columns with keys and data types:
+ IssuedID - primary key with datatype VARCHAR(5): unique ID for each book that has been
issued to a member
+ MemberID - foreign key with datatype VARCHAR(5): ID of the member who has been issued
the book
+ BookID - foreign key with datatype VARCHAR(5): ID of the book that has been issued to
the member
+ IssueDate - NOT NULL column with datatype DATE: date on which the book was issued to
the member
+ DueDate - NOT NULL column with datatype DATE: date on which the book is due to be
returned by the member
+ IssuedBy - foreign key with datatype VARCHAR(5): ID of the staff member who issued the
book to the member
# ReturnBooks
The ***ReturnBooks*** table helps the library to keep track of books that have been returned and the
details of each return transaction. This table contains information about books that have been
returned to the library. Below are the key points about the columns in this table:
+ ReturnID: Primary key column that stores a unique ID for each return transaction. It has a
datatype of VARCHAR(5).
+ IssuedID: Foreign key column that references the IssuedBooks table’s IssuedID column to
identify the book that was returned. It has a datatype of VARCHAR(5) and is not nullable.
+ ReturnDate: Column that stores the date when the book was returned. It has a datatype of
DATE and is not nullable.
+ ReceivedBy: Column that stores the ID of the staff member who received the book. It is a
foreign key column that references the Staffs table’s StaffID column and has a datatype of
VARCHAR(5) and is not nullable.
# Fine
The Fine table is designed to store information about fines levied on library members for late book
returns. This table is automatically populated when a new record is inserted into the ReturnBooks
table. The Fine table has four columns as follows:
+ ReturnID: This column is the primary key of the Fine table and references the ID of the
returned book in the ReturnBooks table.
+ IssuedID: This column references the ID of the issued book in the IssuedBooks table and is a
foreign key in the Fine table.
+ MemberID: This column references the ID of the library member who returned the book and
is a foreign key in the Fine table.
+ FineAmount: This column stores the amount of fine levied on the member for the late book
return. The data type is a decimal with a precision of 10 and scale of 2. The amount will
calculate as number of day overdue * 5.
