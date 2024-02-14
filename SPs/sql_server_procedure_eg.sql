-- Procedure to retrieve a specific company by CompanyId
CREATE PROCEDURE usp_GetCompany
    @CompanyId INT
AS
BEGIN 
    SET NOCOUNT ON;

    IF NOT EXISTS (SELECT 1 FROM Company WHERE CompanyId = @CompanyId)
    BEGIN
        RAISEERROR('Company with specified CompanyId does not exist.', 16, 1);
        RETURN;
    END

    SELECT *
    FROM Company
    WHERE CompanyId = @CompanyId;
END;
GO

------------
DECLARE @CompanyIdToRetrieve INT = 123; -- Replace with the desired CompanyId

EXEC usp_GetCompany @CompanyId = @CompanyIdToRetrieve;
------------


-- Procedure to retrieve all companies
CREATE PROCEDURE usp_GetAllCompany
AS 
BEGIN 
    SET NOCOUNT ON;

    SELECT *
    FROM Company;
END;
GO

------------
EXEC usp_GetAllCompany;
------------

-- Procedure to add a new company
CREATE PROCEDURE usp_AddCompany
    @CompanyId INT OUTPUT,
    @Name VARCHAR(MAX),
    @Address VARCHAR(MAX),
    @City VARCHAR(MAX),
    @State VARCHAR(MAX),
    @PostalCode VARCHAR(MAX)
AS
BEGIN 
    SET NOCOUNT ON;

    BEGIN TRY
        BEGIN TRANSACTION;

        INSERT INTO Company (Name, Address, City, State, PostalCode) 
        VALUES (@Name, @Address, @City, @State, @PostalCode);

        SET @CompanyId = SCOPE_IDENTITY();

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        RAISEERROR('Error occurred while adding a new company.', 16, 1);
        RETURN;
    END CATCH
END;
GO

------------
DECLARE @NewCompanyId INT;
DECLARE @NewCompanyName VARCHAR(MAX) = 'New Company';
DECLARE @NewCompanyAddress VARCHAR(MAX) = '123 Main St';
DECLARE @NewCompanyCity VARCHAR(MAX) = 'City';
DECLARE @NewCompanyState VARCHAR(MAX) = 'State';
DECLARE @NewCompanyPostalCode VARCHAR(MAX) = '12345';

EXEC usp_AddCompany 
    @CompanyId = @NewCompanyId OUTPUT,
    @Name = @NewCompanyName,
    @Address = @NewCompanyAddress,
    @City = @NewCompanyCity,
    @State = @NewCompanyState,
    @PostalCode = @NewCompanyPostalCode;

-- The newly generated CompanyId is now available in @NewCompanyId
------------

-- Procedure to update company information
CREATE PROCEDURE usp_UpdateCompany
    @CompanyId INT,
    @Name VARCHAR(MAX),
    @Address VARCHAR(MAX),
    @City VARCHAR(MAX),
    @State VARCHAR(MAX),
    @PostalCode VARCHAR(MAX)
AS
BEGIN 
    SET NOCOUNT ON;

    BEGIN TRY
        BEGIN TRANSACTION;

        UPDATE Company
        SET 
            Name = @Name, 
            Address = @Address,
            City = @City, 
            State = @State, 
            PostalCode = @PostalCode
        WHERE CompanyId = @CompanyId;

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        RAISEERROR('Error occurred while updating company information.', 16, 1);
        RETURN;
    END CATCH
END;
GO

------------
DECLARE @CompanyIdToUpdate INT = 456; -- Replace with the desired CompanyId
DECLARE @UpdatedCompanyName VARCHAR(MAX) = 'Updated Company';
DECLARE @UpdatedCompanyAddress VARCHAR(MAX) = '456 Oak St';
DECLARE @UpdatedCompanyCity VARCHAR(MAX) = 'Updated City';
DECLARE @UpdatedCompanyState VARCHAR(MAX) = 'Updated State';
DECLARE @UpdatedCompanyPostalCode VARCHAR(MAX) = '54321';

EXEC usp_UpdateCompany
    @CompanyId = @CompanyIdToUpdate,
    @Name = @UpdatedCompanyName,
    @Address = @UpdatedCompanyAddress,
    @City = @UpdatedCompanyCity,
    @State = @UpdatedCompanyState,
    @PostalCode = @UpdatedCompanyPostalCode;
------------

-- Procedure to remove a company by CompanyId
CREATE PROCEDURE usp_RemoveCompany
    @CompanyId INT
AS 
BEGIN 
    SET NOCOUNT ON;

    BEGIN TRY
        BEGIN TRANSACTION;

        DELETE
        FROM Company
        WHERE CompanyId = @CompanyId;

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        RAISEERROR('Error occurred while removing the company.', 16, 1);
        RETURN;
    END CATCH
END;
GO

------------
DECLARE @CompanyIdToRemove INT = 789; -- Replace with the desired CompanyId

EXEC usp_RemoveCompany @CompanyId = @CompanyIdToRemove;
------------
