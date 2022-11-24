select version ();

select *
from "confi-data";

select *
from "confi-data"
limit 50;

select *
from "confi-data"
order by "COST" desc
limit 50;

select *
from "confi-data"
where "BRANDS" = 'beta malt';

select *
from "confi-data" 
where "PROFIT" > 250000
order by "BRANDS" = 'beta malt';

select "SALES_ID", "SALES_REP", "PROFIT"
from "confi-data";

select Distinct "SALES_REP", "EMAILS"
from "confi-data";

select "MONTHS", "YEARS"
from "confi-data"
limit 100;

select *
from "confi-data"
where "COUNTRIES" = 'Nigeria' and "PROFIT" < 100000;

select *
from "confi-data"
where "COUNTRIES" = 'Togo' and "BRANDS" = 'hero';

select *
from "confi-data"
where "SALES_REP" = 'Jardine' or "COUNTRIES" = 'Benin'
limit 5;

select *
from "confi-data"
order by "PROFIT" desc offset 3 rows 
fetch first 10 rows only;

select distinct "SALES_REP"
from "confi-data"
where "SALES_REP" like '%i%';

select sum("PROFIT") as "Total_profit"
from "confi-data";

select avg("COST") as "Mean_cost"
from "confi-data";

select min("PROFIT") as "Minimun_prof"
from "confi-data";

select max("PROFIT") as "Max_prof"
from "confi-data";

-------- USING THE GROUP BY CLAUSE ---------
select "COUNTRIES"
from "confi-data";

select "COUNTRIES", avg("PROFIT") as "Avg_prof"
from "confi-data"
group by "COUNTRIES"
order by "Avg_prof" desc;

select "SALES_REP", max("PROFIT") as "Max_prof"
from "confi-data"
group by "SALES_REP"
order by "Max_prof" desc;

select "SALES_REP", max("PROFIT") as "Max_prof"
from "confi-data"
group by "SALES_REP";

select "COUNTRIES", "SALES_REP", "BRANDS","PROFIT" 
from "confi-data"
where "COUNTRIES" like = ('Nigeria', 'Togo') as 'Anglophone' and ('Ghana','Senegal','Benin') as 'Francophone'
order by "PROFIT" desc;


---- PROFIT ANALYSIS ----
QUESTION 1 
select "SALES_REP", sum("PROFIT") as "Total_profit"
from "confi-data"
group by "SALES_REP"
order by "Total_profit" desc;

QUESTION 2
select distinct "BRANDS" "SALES_REP", sum("PROFIT"/"COST")*100 as "Profit_percentage"
from "confi-data"
group by "BRANDS"
order by "Profit_percentage" desc;

QUESTION 3
select distinct "COUNTRIES", "YEARS", sum("PROFIT") as "Total_profit"
from "confi-data"
group by "COUNTRIES", "YEARS"
order by "Total_profit" desc;

QUESTION 4
select distinct "YEARS", sum("PROFIT") as "Total_profit"
from "confi-data"
group by "YEARS"
order by "Total_profit" desc;

QUESTION 5
select "YEARS", "MONTHS", sum("PROFIT") as "Total_profit"
from "confi-data"
group by "YEARS", "MONTHS"
order by "Total_profit" asc;


QUESTION 6 
select "YEARS", "MONTHS", min("PROFIT") as "min_profit"
from "confi-data"
where "MONTHS" like '%December%' and "YEARS" = 2019
group by "MONTHS", "YEARS"
order by "min_profit" desc;


QUESTION 7
select "MONTHS", "YEARS", sum("PROFIT"/"COST")*100 as "profit_percentage" 
from "confi-data"
where "YEARS" = 2019
group by "MONTHS", "YEARS"
order by "profit_percentage" desc
limit 10;

QUESTION 8 
select "COUNTRIES", "BRANDS", max("PROFIT") as "max_profit"
from "confi-data"
where "COUNTRIES" like '%Senegal%'
group by "BRANDS", "COUNTRIES"
order by "max_profit" desc;


