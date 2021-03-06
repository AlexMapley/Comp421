-- Consider each one of these a work in progress.
-- Though maybe not complex enough yet,
-- they all actually work.

-- 1) Lists all single dogs in descending order by birthdate
select name, gender, age(birthdate)
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


--3) Selects all Female Dogs in the 'Followers of Lassie' Club
-- Listing Names in alphabetical order with Ids
select dogprofiles.did, dogprofiles.name, dogclubs.name
from dogprofiles, dogclubs
where dogprofiles.gender = 0 
and dogclubs.cid = 5
and dogprofiles.did in (
        select dogid
        from membersofclubs
)
order by dogprofiles.name ASC
;

--4) Finds all friends of Spike's (1) Family who are friends
-- with Jojo (16), his girlfriend
select dogProfiles.did, dogProfiles.name
from dogProfiles
where dogProfiles.did in (
        select dog2 from familyMembers 
        where dog1 = 1
        )
and  dogprofiles.did in (
        select dog1 from dogFriends
        where dog2 = 16
        )
;

--5) Lists all Owners that are admins of a club, event, retailer, or service
select *
from ownerprofiles
where opid in (
        select adminid from clubadmins
) or opid in (
        select adminid from eventadmins
) or opid in (
        select ownerid from serviceadmins
) or opid in (
        select ownerid from retailadmins
)
;

