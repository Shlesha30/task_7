select crop_id,crop_year,season,state_id from agricultural_data

select election_id, state_id, candidate_name from election_data


----join
create view deatil_info as
select sum(a.crop_id),a.season,a.state_id,e.election_id, e.candidate_name from agricultural_data as a
inner join election_data as e
on a.state_id= e.state_id
group by a.crop_year,a.season,a.state_id,e.election_id, e.candidate_name
having sum(a.crop_id)>500 AND  sum(a.crop_id)<1000
limit 1000
offset 500

select * from deatil_info
	
---update 
	
update agricultural_data
set season= 'Whole Year'
where area <5000

select * from agricultural_data

---alter

alter table agricultural_data
add column Winter varchar;

alter table election_data
drop column constituency

select * from agricultural_data

select * from election_data

----delete

select * from agricultural_data

begin

select * from agricultural_data

delete  from agricultural_data where state_id ='Assam'

select * from agricultural_data





