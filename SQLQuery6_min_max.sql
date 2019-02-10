-- Lowest annual salary of members

select 
min([annual_salary]) MinAnnualSalary 
from
[Chapter 4 - Insurance].[dbo].[Member]


-- claim categories/causes that paid smallest amount and % contribution of claims paid by cause

select 
[ClaimCauseCategory],
[ClaimCause],
[claimstatus],
min([claimpaidamount]) as m_cpa,
sum([claimpaidamount]) as s_cpa,
count(ClaimCause) as c_cc
from
[Chapter 4 - Insurance].[dbo].[MemberClaims]
group by
[ClaimCauseCategory],
[ClaimCause],
[claimstatus]