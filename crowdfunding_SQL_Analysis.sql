-- Challenge Bonus queries.
-- 1. (2.5 pts)
-- Retrieve all the number of backer_counts in descending order for each `cf_id` for the "live" campaigns. 
SELECT  backers_count, cf_id
FROM campaign 
WHERE outcome = 'live'
GROUP BY cf_id
ORDER BY backers_count DESC;



-- 2. (2.5 pts)
-- Using the "backers" table confirm the results in the first query.

SELECT COUNT (ca.cf_id), ca.cf_id
FROM backers AS b
LEFT JOIN campaign AS ca
ON b.cf_id = ca.cf_id
WHERE ca.outcome = 'live'
GROUP BY ca.cf_id
ORDER BY count(ca.cf_id) DESC;

-- 3. (5 pts)
-- Create a table that has the first and last name, and email address of each contact.
-- and the amount left to reach the goal for all "live" projects in descending order. 




-- Check the table


-- 4. (5 pts)
-- Create a table, "email_backers_remaining_goal_amount" that contains the email address of each backer in descending order, 
-- and has the first and last name of each backer, the cf_id, company name, description, 
-- end date of the campaign, and the remaining amount of the campaign goal as "Left of Goal". 



-- Check the table


