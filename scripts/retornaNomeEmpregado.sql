create or replace function retornaNomeEmp(nid int)
returns text
as
$$
declare
	cnome varchar(100);
begin

	execute 'select nome from empregado where id = '||nid into cnome; 
	return cnome;
end;
$$ language plpgsql;