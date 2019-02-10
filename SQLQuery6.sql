select
count(*)
from [Chapter 4 - Insurance].[dbo].[Member]

select 
*
from 
[Chapter 4 - Insurance].[dbo].[Member] c1
order by annual_salary


select 
count(claimtype) c3, sum(claimpaidamount) c2, claimtype
from [Chapter 4 - Insurance].[dbo].[MemberClaims]
group  by claimtype



select
year(claimpaiddate) as [Year]
,c1.claimtype
,sum(claimpaidamount) as TotalClaimpaid
from
[Chapter 4 - Insurance].[dbo].[MemberClaims] c1
where c1.claimtype = 'TPD' or c1.claimtype = 'DTH'
group by year(claimpaiddate), c1.claimtype
order by
year(claimpaiddate) desc


select
count(*)
from [Chapter 4 - Insurance].[dbo].[Member]


