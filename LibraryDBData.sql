INSERT INTO
    Books (BookID, Title, Author, Publisher, PublicationDate, ISBN, TotalCopies, AvailableCopies)
    VALUES
        ('B001', 'Scooby-Doo and the Pirate Treasure', NULL, 'Little Golden Book', '2020-04-07', 0593178696, 11, 11),
        ('B002', 'How to Catch an Elf', 'Andy Elkerton, Adam Wallace', 'Sourcebooks Wonderland', '2016-10-04', 9781492646310, 7, 7),
        ('B003', 'An Outline of Statistical Theory Vol 1', 'A. M. GUN, M. K. GUPTA, B. DASGUPTA', 'World Press', '2016-03-17', 9788187567905, 15, 15),
        ('B004', 'Sera Satyajit', 'Satyajit Ray', 'Ananda Publishers', '1991-05-02', 9788172150310, 12, 12),
        ('B005', 'Gitanjali', 'Rabindranath Tagore', NULL, '2017-07-24', 1521925771, 6, 6),
        ('B006', 'Weyward', 'Emilia Hart', 'St. Martin Press', '2023-03-07', '125028080X', 13, 13),
        ('B007', '1001 Arabian Nights', NULL, 'CreateSpace Independent Publishing Platform', '2011-08-16', 1463794533, 3, 3),
        ('B008', 'Godaan', 'Munshi Premchand', 'Fingerprint! Publishing', '2019-02-01', 9388810473, 6, 6),
        ('B009', 'Atomic Habits: An Easy & Proven Way to Build Good Habits & Break Bad Ones', 'James Clear', 'Avery; Illustrated edition', '2018-10-16', 0735211299, 4, 4),
        ('B010', 'Dungeons & Dragons: Honor Among Thieves: The Road to Neverwinter', 'Jaleigh Johnson', 'Random House Worlds', '2023-02-28', '059359813X', 8, 8),
        ('B011', 'Chander Pahar', 'Bibhutibhushan Bandyopadhyay', NULL, '2017-11-22', 1979944431, 9, 9),
        ('B012', 'The World"s Greatest Short Stories', NULL, 'Dover Publications', '2006-04-28', 0486447162, 3, 3),
        ('B013', 'Grizzly Killer: The Making of a Mountain Man', 'Lane R. Warenski', 'Wolfpack Publishing', '2017-01-11', 1629186368, 6, 6),
        ('B014', 'Inspirational Sports Stories for Young Readers', 'Kurt Taylor', 'Red Panda Press', '2022-10-04', '979-8887680125', 4, 4)
;


INSERT INTO
    Staffs (StaffID, Name, Address, Phone, Email, DoJ)
    VALUES
        ('S001', 'Anand Misra', 'Gokuldham, Delhi', '9830281212', 'a.misra@library.com', '2014-01-01'),
        ('S002', 'Ravi Yadav', 'Patna, Bihar', '7390654133', 'r.yadav@library.com', '2014-07-23'),
        ('S003', 'Rani Sharma', 'Jalgaon, Mumbai', '6387903419', 'r.sharma@library.com', '2016-01-18'),
        ('S004', 'Anek Bose', 'Yadavpur, Kolkata', '9434110988', 'a.bose@library.com', '2017-12-12')
;


INSERT INTO
    Members (MemberID, Name, Address, Phone, Email, MembershipStatus)
    VALUES
        ('M001', 'Aakash Das', 'Medinipur, West Bengal', '9733447809', NULL, 'Active'),
        ('M002', 'Rajiv Kr.', 'Gaya, Bihar', '761093746', 'rkr1221@gmail.com', 'Not Active'),
        ('M003', 'Rohit Yadav', 'Akbarpur, UP', '9322108528', NULL, 'Active'),
        ('M004', 'Subhas Bhutia', 'Silchar, Assam', '6290874517', NULL, 'Active'),
        ('M005', 'Meena Vandana', 'Egmore, Chennai', '93465920755', 'meena.v32@yahoo.com', 'Active'),
        ('M006', 'Priya Vadane', 'Kharghar, Navi Mumbai', '7064783901', NULL, 'Not Active'),
        ('M007', 'Arun Sen', 'Ramnagar, UP', '6752098176', 'asen987@hotmail.com', 'Active'),
        ('M008', 'Nawaz Khan', 'Kolkata', '7865409134', 'khann1@gmail.com', 'Active')
;


INSERT INTO
    IssuedBooks (IssuedId, MemberID, BookID, IssueDate, DueDate, IssuedBy)
    VALUES
        ('I001', 'M001', 'B009', '2020-07-17', '2020-12-12', 'S001'),
        ('I002', 'M003', 'B001', '2020-07-17', '2020-12-12', 'S001'),
        ('I003', 'M006', 'B012', '2021-03-22', '2021-04-13', 'S003'),
        ('I004', 'M004', 'B005', '2021-08-19', '2021-12-04', 'S002'),
        ('I005', 'M002', 'B011', '2021-10-01', '2021-12-12', 'S004'),
        ('I006', 'M001', 'B012', '2022-03-07', '2022-09-09', 'S001'),
        ('I007', 'M005', 'B014', '2022-03-17', '2022-08-18', 'S002'),
        ('I008', 'M007', 'B003', '2022-04-10', '2022-10-16', 'S003'),
        ('I009', 'M005', 'B004', '2022-07-07', '2023-03-15', 'S003'),
        ('I010', 'M008', 'B011', '2023-01-02', '2023-05-21', 'S002'),
        ('I011', 'M008', 'B009', '2023-02-03', '2023-08-12', 'S001')
;


INSERT INTO
    ReturnBooks (ReturnID, IssuedID, ReturnDate, ReceivedBy)
    VALUES
        ('R001', 'I001', '2020-09-13', 'S004'),
        ('R002', 'I002', '2020-10-01', 'S003'),
        ('R003', 'I004', '2021-10-14', 'S001'),
        ('R004', 'I003', '2021-05-17', 'S004'),
        ('R005', 'I006', '2022-04-23', 'S004'),
        ('R006', 'I008', '2022-08-25', 'S002'),
        ('R007', 'I007', '2022-09-13', 'S002')
;

