Drop table Campaign;
Drop table Contacts;
Drop table Category;
Drop table Subcategory;


CREATE TABLE Campaign (
    cf_if INTEGER   NOT NULL,
    contact_id INTEGER   NOT NULL,
    company_name VARCHAR   NOT NULL,
    description VARCHAR   NOT NULL,
    goal VARCHAR NOT NULL,
    pledged VARCHAR NOT NULL,
    outcome VARCHAR   NOT NULL,
    backers_count INTEGER   NOT NULL,
    country VARCHAR  NOT NULL,
    currency VARCHAR   NOT NULL,
    launch_date DATE   NOT NULL,
    end_date DATE   NOT NULL,
    Category_id VARCHAR   NOT NULL,
    subcategory_id VARCHAR   NOT NULL,
    CONSTRAINT pk_Campaign PRIMARY KEY (
        cf_if
     )
);

CREATE TABLE Category (
    category_id VARCHAR   NOT NULL,
    category VARCHAR   NOT NULL,
    CONSTRAINT pk_Category PRIMARY KEY (
        category_id
     )
);

CREATE TABLE Contacts (
    contact_id INTEGER   NOT NULL,
    first_name VARCHAR   NOT NULL,
    last_name VARCHAR   NOT NULL,
    email VARCHAR   NOT NULL,
    CONSTRAINT pk_Contacts PRIMARY KEY (
        contact_id
     )
);

CREATE TABLE Subcategory (
    subcategory_id VARCHAR   NOT NULL,
    subcategory VARCHAR   NOT NULL,
    CONSTRAINT pk_Subcategory PRIMARY KEY (
        subcategory_id
     )
);

ALTER TABLE Campaign ADD CONSTRAINT contact_id FOREIGN KEY(contact_id)
REFERENCES Contacts (contact_id);

ALTER TABLE Campaign ADD CONSTRAINT Category_id FOREIGN KEY(Category_id)
REFERENCES Category (category_id);

ALTER TABLE Campaign ADD CONSTRAINT subcategory_id FOREIGN KEY(subcategory_id)
REFERENCES Subcategory (subcategory_id);

Select * from Campaign;

Select * from Category;

Select * from Contacts;

Select * from Subcategory;


select c.cf_if, con.first_name, con.last_name, con.email, c.company_name, c.description, c.goal, c.pledged,
c.outcome, c.backers_count, c.country, c.currency, c.launch_date, c.end_date,
cat.category, sub.subcategory
from Campaign as c
inner join category cat on c.category_id = cat.category_id
inner join subcategory sub on c.subcategory_id = sub.subcategory_id
inner join contacts con on c.contact_id = con.contact_id;


