create view vw_ChurnData as
  select * from prod_churn where Customer_Status In ('Churned', 'Stayed') ;
  
create view vw_JoinData as
    select * from prod_churn where Customer_Status = "Joined"