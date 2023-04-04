CREATE TABLE Books (
    BookID VARCHAR(5) PRIMARY KEY,
    Title VARCHAR(255) NOT NULL,
    Author VARCHAR(255),
    Publisher VARCHAR(255),
    PublicationDate DATE NOT NULL,
    ISBN VARCHAR(20) NOT NULL,
    TotalCopies INT NOT NULL,
    AvailableCopies INT NOT NULL,
    CONSTRAINT CHK_NULL CHECK (Author IS NOT NULL OR Publisher IS NOT NULL)
);


CREATE TABLE Staffs (
    StaffID VARCHAR(5) PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Address VARCHAR(255) NOT NULL,
    Phone VARCHAR(15) NOT NULL,
    Email VARCHAR(255) NOT NULL,
    DoJ DATE NOT NULL
);


CREATE TABLE Members (
    MemberID VARCHAR(5) PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Address VARCHAR(255) NOT NULL,
    Phone VARCHAR(15) NOT NULL,
    Email VARCHAR(255),
    MembershipStatus ENUM('Active', 'Not Active') NOT NULL
);


CREATE TABLE IssuedBooks (
    IssuedID VARCHAR(5) PRIMARY KEY,
    MemberID VARCHAR(5) NOT NULL,
    BookID VARCHAR(5) NOT NULL,
    IssueDate DATE NOT NULL,
    DueDate DATE NOT NULL,
    IssuedBy VARCHAR(5) NOT NULL,
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID),
    FOREIGN KEY (BookID) REFERENCES Books(BookID),
    FOREIGN KEY (IssuedBy) REFERENCES Staffs(StaffID)
);


CREATE TABLE ReturnBooks (
    ReturnID VARCHAR(5) PRIMARY KEY,
    IssuedID VARCHAR(5) NOT NULL,
    ReturnDate DATE NOT NULL,
    ReceivedBy VARCHAR(5) NOT NULL,
    UNIQUE(IssuedID),
    FOREIGN KEY (IssuedID) REFERENCES IssuedBooks(IssuedID),
    FOREIGN KEY (ReceivedBy) REFERENCES Staffs(StaffID)
);


CREATE TABLE Fine (
    ReturnID VARCHAR(5),
    IssuedID VARCHAR(5),
    MemberID VARCHAR(5),
    FineAmount DECIMAL(10,2)
);
