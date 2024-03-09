-- Create the Accounts table to store information about companies or organizations
CREATE TABLE Accounts (
    id INT PRIMARY KEY AUTO_INCREMENT, name VARCHAR(255) NOT NULL, website VARCHAR(255), industry VARCHAR(50), phone VARCHAR(20)
);

-- Comments for the Accounts table and its columns
COMMENT ON
TABLE Accounts IS 'Stores information about companies or organizations';

COMMENT ON COLUMN Accounts.id IS 'Unique identifier for the account';

COMMENT ON COLUMN Accounts.name IS 'Name of the account (company, organization)';

COMMENT ON COLUMN Accounts.website IS 'Website URL of the account (optional)';

COMMENT ON COLUMN Accounts.industry IS 'Industry the account belongs to (optional)';

COMMENT ON COLUMN Accounts.phone IS 'Phone number of the account (optional)';

-- Create the Contacts table to store information about individual people at accounts
CREATE TABLE Contacts (
    id INT PRIMARY KEY AUTO_INCREMENT, account_id INT NOT NULL, first_name VARCHAR(50) NOT NULL, last_name VARCHAR(50) NOT NULL, email VARCHAR(255), title VARCHAR(100), phone VARCHAR(20), FOREIGN KEY (account_id) REFERENCES Accounts (id)
);

-- Comments for the Contacts table and its columns (add similar comments for Opportunities and Activities)
COMMENT ON
TABLE Contacts IS 'Stores information about individual people at accounts';

COMMENT ON COLUMN Contacts.id IS 'Unique identifier for the contact';

COMMENT ON COLUMN Contacts.account_id IS 'Foreign key referencing account table (mandatory)';

COMMENT ON COLUMN Contacts.first_name IS 'First name of the contact';

COMMENT ON COLUMN Contacts.last_name IS 'Last name of the contact';

COMMENT ON COLUMN Contacts.email IS 'Email address of the contact (optional)';

COMMENT ON COLUMN Contacts.title IS 'Job title of the contact (optional)';

COMMENT ON COLUMN Contacts.phone IS 'Phone number of the contact (optional)';

-- Create the Opportunities table to store information about potential sales deals
CREATE TABLE Opportunities (
    id INT PRIMARY KEY AUTO_INCREMENT, account_id INT NOT NULL, name VARCHAR(255) NOT NULL, value DECIMAL(10, 2), stage VARCHAR(50), close_date DATE, FOREIGN KEY (account_id) REFERENCES Accounts (id) -- Enforces relationship between Opportunities and Accounts tables
);

COMMENT ON
TABLE Opportunities IS 'Stores information about potential sales deals';

COMMENT ON COLUMN Opportunities.id IS 'Unique identifier for the opportunity';

COMMENT ON COLUMN Opportunities.account_id IS 'Foreign key referencing account table (mandatory)';

COMMENT ON COLUMN Opportunities.name IS 'Name of the opportunity (sales deal)';

COMMENT ON COLUMN Opportunities.value IS 'Estimated value of the opportunity (optional)';

COMMENT ON COLUMN Opportunities.stage IS 'Stage of the opportunity (e.g., qualification, proposal, negotiation)';

COMMENT ON COLUMN Opportunities.close_date IS 'Expected close date of the opportunity (optional)';

-- Create the Activities table to track interactions with contacts or accounts
CREATE TABLE Activities (
    id INT PRIMARY KEY AUTO_INCREMENT, contact_id INT, account_id INT, `subject` VARCHAR(255) NOT NULL, `description` TEXT, due_date DATE, completed BOOLEAN, FOREIGN KEY (contact_id) REFERENCES Contacts (id), -- Optional foreign key relationship with Contacts table
    FOREIGN KEY (account_id) REFERENCES Accounts (id) -- Optional foreign key relationship with Accounts table
);

COMMENT ON
TABLE Activities IS 'Tracks interactions with contacts or accounts';

COMMENT ON COLUMN Activities.id IS 'Unique identifier for the activity';

COMMENT ON COLUMN Activities.contact_id IS 'Foreign key referencing contact table (optional)';

COMMENT ON COLUMN Activities.account_id IS 'Foreign key referencing account table (optional)';

COMMENT ON COLUMN Activities.subject IS 'Subject of the activity (e.g., meeting, call, email)';

COMMENT ON COLUMN Activities.description IS 'Description of the activity (optional)';

COMMENT ON COLUMN Activities.due_date IS 'Due date of the activity (optional)';

COMMENT ON COLUMN Activities.completed IS 'Flag indicating completion status of the activity';
