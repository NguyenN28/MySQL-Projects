#Step 1 in SQL Island: View All Inhabitants
select *
from inhabitant

#Step 2 in SQL Island: Finding Friendly Inhabitants
select *
from inhabitant
where state like 'friendly'

#Step 3 in SQL Island: Finding Friendly Weaponsmith with AND
select *
from inhabitant
where job like 'weaponsmith' and state like 'friendly'

#Step 4 in SQL Island: Finding Friendly Smiths with LIKE '%smith'
select *
from inhabitant
where job like '%smith' and state like 'friendly'

#Step 5 in SQL Island: Get My personid
select personid
from inhabitant
where name like 'Stranger'

#Step 6 in SQL Island: Checking How Much Gold You Have?
select gold
from inhabitant
where personid = 20

#Step 7 in SQL Island: List of All Items That Don’t Belong to Anyone
select *
from item
where owner is null

#Step 8 in SQL Island: Collect All Ownerless Items
update item set owner = 20 where owner is null

#Step 9 in SQL Island: List All Items You Have
select *
from item
where owner = 20 

#Step 10 in SQL Island: Find Friendly Dealer or Merchant
select *
from inhabitant
where state like 'friendly' and (job like 'dealer' or job like 'merchant')

#Step 11 in SQL Island: Get the Ring and Teapot
update item 
set owner = 15
where item = 'ring' or item = 'teapot'

#Step 12 in SQL Island: Change Name from Stranger to Real Name
update inhabitant 
set name = 'Leona'
where personid = 20

#Step 13 in SQL Island: Baking Job That Pays the Most Gold
select *
from inhabitant 
where job = 'baker' 
order by gold desc

#Step 14 in SQL Island: Finding A Pilot
select *
from inhabitant 
where job = 'pilot' 

#Step 15 in SQL Island: Find Chief’s Name of Village Onionville Using JOIN
select inhabitant.name
from inhabitant, village 
where inhabitant.personid = village.chief
and village.name = 'Onionville'

#Step 16 in SQL Island: COUNT Number of Women in Onionville
select count(name)
from inhabitant  
where villageid = 3 and gender = 'f'

#Step 17 in SQL Island: Find The SUM of all Bakers, Dealers and Merchants's Gold
select sum(gold) 
from inhabitant 
where job = 'baker' or job = 'dealer' or job = 'merchant' 

#Step 18 in SQL Island: Average Gold By Different Inhabitant States
select state, avg(gold)
from inhabitant 
group by state

#Step 19 in SQL Island: DELETE Dirty Diane
select state, avg(gold)
from inhabitant 
group by state

#Step 20 in SQL Island: Release The Pilot
DELETE FROM inhabitant WHERE name = 'Dirty Diane'

#Step 21 in SQL Island: We've Escaped SQL Island
update inhabitant set state = 'friendly' where state = 'kidnapped'

