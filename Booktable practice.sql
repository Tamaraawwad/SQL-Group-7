
-- Step 1: View existing data
SELECT * FROM Booktable;

-- Step 2: Delete empty rows
DELETE FROM Booktable
WHERE [Book ISBN] IS NULL 
  AND Status IS NULL
  AND Category IS NULL
  AND [Purchase Cost] IS NULL;

-- Step 3: Check table structure
PRAGMA table_info(Booktable);

-- Step 4: Create a new table with correct data types
CREATE TABLE Booktable_new (
    BookISBN TEXT,
    Status TEXT,
    Category TEXT,
    PurchaseCost REAL
);

-- Step 5: Copy data from the old table to the new table
INSERT INTO Booktable_new (BookISBN, Status, Category, PurchaseCost)
SELECT [Book ISBN], Status, Category, [Purchase Cost] FROM Booktable;

-- Step 6: Drop the old table
DROP TABLE Booktable;

-- Step 7: Rename the new table to the old table's name
ALTER TABLE Booktable_new RENAME TO Booktable;

-- Step 8: Verify the new table
SELECT * FROM Booktable;

PRAGMA table_info(Booktable);

-- Step 9: Select books with PurchaseCost greater than 12
SELECT * FROM Booktable WHERE PurchaseCost > 12;

Select DISTINCT Category from Booktable;
Select * from Booktable WHERE Status ="Out";
Select * from Booktable Limit 3;
Select count(BookISBN) from Booktable WHERE Category ="Travel";
Select * from Booktable;

DELETE from Booktable WHERE BookISBN IN ("978-1-119-95055-02-4", "978-0-261-81762-01-2");
SELECT * from Booktable WHERE BookISBN IN ("978-1-119-95055-02-4", "978-0-261-81762-01-2");


