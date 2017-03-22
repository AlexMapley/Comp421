-- Deletes statuses that contain the word 'dog' or 'cat'
-- made by dogprofiles younger than or equal to 4	
DELETE FROM dogstatuses USING dogprofiles
WHERE (dogstatuses.did = dogprofiles.did 
AND (content ~ 'cat' OR content ~ 'dog')
AND extract(year from age(dogprofiles.birthdate)) <= 4);

-- remove reservation if dog goes to an event sponsored by service

DELETE FROM ownerreservesservices USING goingtoevent, servicessponsorevents, ownsdogs
WHERE (goingtoevent.eventid = servicessponsorevents.eventid)
AND (goingtoevent.dogid = ownsdogs.dogid);

-- Update multiple tuples for reservations from one service to another service

UPDATE ownerreservesservices SET serviceid = 6
WHERE ownerid IN (
    SELECT ownerid FROM services WHERE serviceid = 1
);

-- insert all dogs whose owner has multiple dogs to the multi-dog club

INSERT INTO membersofclubs (dogid, clubid)
select distinct r2.dogid,8 from (select dogid from ownsdogs where ownerid in (
select distinct r1.ownerid from (
select ownerid, sum(case when ownerid = ownerid then 1 else 0 end)
from ownsdogs
group by ownerid)
as r1 where sum > 1)) as r2;
