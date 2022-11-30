create table campaign(		
cf_id	int,
contact_id	int,
company_name	varchar(100),
description	varchar(255),
goal numeric(10,2),
pledged	numeric(10,2),
outcome	varchar(10),
backers_count int,
country	varchar(10),
currency varchar(5),
launched_date date,
end_date date,
category_id	varchar(10),
subcategory_id varchar(10));

create table backers(

becker_id varchar(10),
cf_id int,
first_name varchar(50),
last_name varchar(50),
email varchar(200)
);


--Write a SQL query that retrieves the number of backer_counts in descending order 
--for each “cf_id” for all the "live" campaigns

SELECT campaign.backers_count,campaign.cf_id 
FROM CAMPAIGN 
WHERE campaign.outcome = 'live'
ORDER BY backers_count DESC;

select* from campaign


ORDER BY cf_id DESC

SELECT backers.first_name,
     backers.last_name,
     backers.email,
	 backers.cf_id
Into New_Table
FROM backers
INNER JOIN campaign
ON campaign.cf_id =backers.cf_id
WHERE campaign.outcome = 'live'
select* from rga


--remaining_goal_amount


Select * from R
SELECT 
campaign.goal, 
campaign.pledged,
campaign.contact_id,
campaign.goal-campaign.pledged AS remaining_goal_amount 
into RGA
FROM campaign
WHERE campaign.outcome = 'live'
ORDER BY remaining_goal_amount DESC;


select * from remaining_goal_amount
ORDER BY Difference DESC;

SELECT * FROM campaign
SELECT * FROM backers

-- Joining backer and campaign tables
SELECT backers.first_name,
     backers.last_name,
     backers.email,
	 backers.cf_id
Into New_Table
FROM backers
INNER JOIN campaign
ON campaign.cf_id =backers.cf_id
WHERE campaign.outcome = 'live'
select* from new_table

--remaining_goal_amount 
SELECT campaign.goal, campaign.pledged,campaign.cf_id,campaign.outcome,
campaign.goal-campaign.pledged AS Difference
into remaining_goal_amount
FROM campaign
WHERE campaign.outcome = 'live';


select * from remaining_goal_amount
Alter table remaining_goal_amount
RENAME COLUMN remaining_goal_amount  TO Left_of_goal;

-- Joining remaining_goal_amount and campaign tables
SELECT new_table.first_name,
     new_table.last_name,
     new_table.email,
	 remaining_goal_amount.Left_of_goal
FROM new_table
INNER JOIN remaining_goal_amount
ON remaining_goal_amount.cf_id =new_table.cf_id

Select *  from email_contacts_remaining_goal_amount
alter table email_contacts_remaining_goal_amount
drop cf_id;



select * from contacts
-- Joining backer and campaign tables
SELECT 
contacts.first_name,
contacts.last_name,
contacts.email,
RGA.remaining_goal_amount
into email_contacts_remaining_goal_amount
FROM contacts
INNER JOIN RGA
ON contacts.contact_id = RGA.contact_id;

select * from email_contacts_remaining_goal_amount
select* from campaign
Select * from backers
select * from email_contacts_remaining_goal_amount
--Write a SQL query that creates a new table named email_backers_remaining_goal_amount
SELECT 
backers.email,
backers.first_name,
backers.last_name,
backers.cf_id,
campaign.company_name,
campaign.description,
campaign.end_date,
rga_part_2.remaining_goal_amount as Left_of_Goal
--Into email_backers_remaining_goal_amount
FROM backers
Inner Join Campaign
ON Campaign.cf_id = backers.cf_id
INNER JOIN rga_part_2
email_backers_remaining_goal_amount.csv
ON backers.cf_id =rga_part_2.cf_id
order by backers.email;
Select * from rga
select * from email_backers_remaining_goal_amount
Select * from email_backers_remaining_goal_amount_part_1

SELECT 
campaign.goal, 
campaign.pledged,
campaign.cf_id,
campaign.goal-campaign.pledged AS remaining_goal_amount 
into RGA_part_2
FROM campaign
WHERE campaign.outcome = 'live'
ORDER BY remaining_goal_amount DESC;

Select * from email_backers_remaining_goal_amount
