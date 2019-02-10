--Analyzed mean of insurance premium paid across the age group in year 2014
select
count(*)
from [Chapter 4 - Insurance].[dbo].[Member]


select 
sum([total_death_cover])/(select count(*) from [Chapter 4 - Insurance].[dbo].[Member])
from [Chapter 4 - Insurance].[dbo].[MemberCover]
where [underwriting_year] = 2014


select 
avg([total_death_cover])
from [Chapter 4 - Insurance].[dbo].[MemberCover]
where [underwriting_year] = 2014


select 
count(distinct([MemberKey]))
from [Chapter 4 - Insurance].[dbo].[MemberCover]
where [underwriting_year] = 2014


select
m.age, 
avg([total_death_cover]) as tdc,
avg([total_death_cover_premium]) as tdcp
from [Chapter 4 - Insurance].[dbo].[Member] m inner join
[Chapter 4 - Insurance].[dbo].[MemberCover] mc on m.[MemberKey] = mc.[MemberKey]
where [underwriting_year] = 2014
group by
m.age
order by
m.age



