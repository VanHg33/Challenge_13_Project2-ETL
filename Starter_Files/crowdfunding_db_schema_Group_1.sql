-- DROP DATABASE IF EXISTS "Project2";

drop table if exists contacts;
drop table if exists category;
drop table if exists subcategory;
drop table if exists campaign;


CREATE TABLE contacts (
    contact_id INTEGER  NOT NULL ,
    first_name VARCHAR(50)  NOT NULL ,
    last_name VARCHAR(50)  NOT NULL ,
    email VARCHAR(50)  NOT NULL,
	CONSTRAINT "primary_contacts" PRIMARY KEY ("contact_id")
);

CREATE TABLE category (
    category_id VARCHAR(50)  NOT NULL ,
    category VARCHAR(50)  NOT NULL ,
	CONSTRAINT "primary_category" PRIMARY KEY ("category_id")
);

CREATE TABLE subcategory (
    subcategory_id VARCHAR(50)  NOT NULL ,
    subcategory VARCHAR(50)  NOT NULL ,
    CONSTRAINT "primary_subcategory" PRIMARY KEY ("subcategory_id")
);

CREATE TABLE campaign (
    cf_id INTEGER NOT NULL ,
    contact_id INTEGER NOT NULL ,
    company_name VARCHAR(250)  NOT NULL ,
    description VARCHAR(250) NOT NULL ,
    goal FLOAT NOT NULL ,
    pledged FLOAT NOT NULL ,
    outcome VARCHAR(250) NOT NULL ,
    backers_count INTEGER NOT NULL ,
    country VARCHAR(20) NOT NULL ,
    currency VARCHAR(5) NOT NULL ,
    launched_date VARCHAR(50) NOT NULL ,
    end_date VARCHAR(50) NOT NULL ,
    category_id VARCHAR(50) NOT NULL ,
    subcategory_id VARCHAR(50) NOT NULL ,
	CONSTRAINT "primary_campaign" PRIMARY KEY ("cf_id")	
);

ALTER TABLE "campaign" ADD CONSTRAINT "foreigncamp_con_id" 
FOREIGN KEY("contact_id") REFERENCES "contacts" ("contact_id");
ALTER TABLE "campaign" ADD CONSTRAINT "foreigncamp_cat_id" 
FOREIGN KEY("category_id") REFERENCES "category" ("category_id");
ALTER TABLE "campaign" ADD CONSTRAINT "foreigncamp_subcat_id" 
FOREIGN KEY("subcategory_id") REFERENCES "subcategory" ("subcategory_id");

-- highlight each one to check the runs

SELECT * 
FROM contacts;

SELECT * 
FROM category;

SELECT * 
FROM subcategory;

SELECT * 
FROM campaign;