-- Consider each one of these a work in progress.
-- Though maybe not complex enough yet,
-- they all actually work.

-- 1) Lists all single dogs in descending order by birthdate
select name, age(birthdate)
from dogprofiles
where name in (
        select name
        from dogprofiles
        where relationship_status = 0
        )
order by age(birthdate) DESC
;


-- 2) Lists Taco's friends that are Samantha's friends
-- ie. "Mutual dog friends"
select name, gender
from dogProfiles
where did in (
        select dog2
        from dogfriends
        where dog1 = 5 and dog2 in (
                select dog2
                from dogfriends
                where dog1 = 4
        )
);


--3) Joins Owner and Dog Profiles on shared ID
--select *
--from dogprofiles
--inner join ownerprofiles
--on (dogprofiles.did = ownerprofiles.opid)
--;

--4) Cross Product of  Clubs, Retailers, and Services
--select dogclubs.name, retailers.name, services.name
--from dogclubs, retailers, services
--;

--5) Lists all services and retailers
--select *
--from services
--UNION
--select *
--from retailers
--; 

