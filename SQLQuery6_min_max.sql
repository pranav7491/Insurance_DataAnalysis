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
count(ClaimCause) as c_cc,
((min([claimpaidamount]))/sum([claimpaidamount])) as pcntg

from
[Chapter 4 - Insurance].[dbo].[MemberClaims]
where
[claimstatus] = 'Paid'
group by
[ClaimCauseCategory],
[ClaimCause],
[claimstatus]
order by
1