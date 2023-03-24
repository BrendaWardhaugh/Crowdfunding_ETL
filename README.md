# Crowdfunding_ETL
Project 2

Building an ETL pipeline using Python, Pandas, and either Python dictionary methods or regular expressions to extract and transform the data. After you transform the data, you'll create four CSV files and use the CSV file data to create an ERD and a table schema. Finally, you’ll upload the CSV file data into a Postgres database.

### Create  the Category and Subcategory DataFrames
Extract and transform the crowdfunding.xlsx Excel data to create a category DataFrame that has the following columns: A "category_id" column that has entries going sequentially from "cat1" to "catn", where n is the number of unique categories. A "category" column that contains only the category titles.
The following image shows this category DataFrame:

![category](https://user-images.githubusercontent.com/120147552/227393630-dea695d5-8241-4d99-a792-776884613aa8.png)

Extract and transform the crowdfunding.xlsx Excel data to create a subcategory DataFrame that has the following columns: A "subcategory_id" column that has entries going sequentially from "subcat1" to "subcatn", where n is the number of unique subcategories. A "subcategory" column that contains only the subcategory titles.
The following image shows this subcategory DataFrame:

![subcat](https://user-images.githubusercontent.com/120147552/227393690-3e992d96-985e-405d-9985-81639ded8777.png)

### Create the Campaign DataFrame
Extract and transform the crowdfunding.xlsx Excel data to create a campaign DataFrame has the following columns:
* The "cf_id" column
* The "contact_id" column
* The "company_name" column
* The "blurb" column, renamed to "description"
* The "goal" column, converted to the float data type
* The "pledged" column, converted to the float data type
* The "outcome" column
* The "backers_count" column
* The "country" column
* The "currency" column
* The "launched_at" column, renamed to "launch_date" and with the UTC times converted to the datetime format
* The "deadline" column, renamed to "end_date" and with the UTC times converted to the datetime format
* The "category_id" column, with unique identification numbers matching those in the "category_id" column of the category DataFrame
* The "subcategory_id" column, with the unique identification numbers matching those in the "subcategory_id" column of the subcategory DataFrame* 
The following image shows this campaign DataFrame:

![campaign](https://user-images.githubusercontent.com/120147552/227394193-f85a06f0-25bd-4782-b775-5aae25570d32.png)

### Create the Contacts DataFrame
Import the contacts.xlsx file into a DataFrame. Iterate through the DataFrame, converting each row to a dictionary. Iterate through each dictionary, doing the following: 
* Extract the dictionary values from the keys by using a Python list comprehension.
* Add the values for each row to a new list.
* Create a new DataFrame that contains the extracted data.
* Split each "name" column value into a first and last name, and place each in a new column.
* Clean and export the DataFrame as contacts.csv and save it to your GitHub repository.

![contacts](https://user-images.githubusercontent.com/120147552/227394348-e128bf93-fa4f-4071-adc3-ac69f5fdd829.png)

### Create the Crowdfunding Database
Inspect the four CSV files, and then sketch an ERD of the tables by using QuickDBDLinks to an external site..

![DBD](https://user-images.githubusercontent.com/120147552/227395180-171a8c4d-7d36-4c73-9d75-d672e6cb3712.png)

Using PostgressSQL, combine the SQL tables by their forgien keys to create a cleaned data table that replaces:
* contact_id with first name, last name and email
* category_id with category
* subcategory_id with subcategory

![combined data](https://user-images.githubusercontent.com/120147552/227395836-74e1f02f-72fd-41b8-9b1a-02abd55eb60d.png)

