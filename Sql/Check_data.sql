select * from customer;

-- to check the data field here we can see how much percentage of men and women are there
select Gender, count(Gender) as TotalCount,
count(Gender) *100.0 / (Select count(*) from customer) as Percentage
from customer 
group by Gender;

select Contract, count(Contract) as TotalCount,
count(Contract) *100.0 / (Select count(*) from customer) as Percentage
from customer 
group by Contract;

-- customer status column 
Select Customer_Status , count(Customer_Status) as TotalCount , Sum(Total_Revenue) as TotalRev,
sum(Total_Revenue) / (select sum(Total_Revenue) from customer) *100 as RevPercentage
from customer
group by Customer_Status;

-- highest percenatge of contribution by State
select State , Count(State) as TotalCount,
count(State) * 100 / (select count(*) from customer) as Percentage
from customer
group by State
order by Percentage desc;


-- To identfidy the item we have in our colum withpout using count (dictin)
select distinct Internet_Type
from customer;





