CREATE TABLE Category (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(100) NOT NULL
);

CREATE TABLE Room (
    RoomID INT PRIMARY KEY,
    RoomNumber VARCHAR(20) NOT NULL,
    RoomName VARCHAR(100) NOT NULL
);

CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,
    FullName VARCHAR(150) NOT NULL,
    Position VARCHAR(100) NOT NULL
);

CREATE TABLE Asset (
    AssetID INT PRIMARY KEY,
    InventoryNumber VARCHAR(50) UNIQUE NOT NULL,
    AssetName VARCHAR(200) NOT NULL,
    Price DECIMAL(10, 2) CHECK (Price >= 0),
    CategoryID INT NOT NULL,
    FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID)
);

CREATE TABLE Asset_Allocation (
    AllocationID INT PRIMARY KEY,
    AssetID INT NOT NULL,
    EmployeeID INT NOT NULL,
    RoomID INT NOT NULL,
    IssueDate DATE NOT NULL,
    ReturnDate DATE,
    FOREIGN KEY (AssetID) REFERENCES Asset(AssetID),
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID),
    FOREIGN KEY (RoomID) REFERENCES Room(RoomID),
    CHECK (ReturnDate IS NULL OR ReturnDate >= IssueDate)
);
