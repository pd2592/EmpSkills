use emp;

set hive.cli.print.current.db=true;

create table if not exists skills(ename string, skill string, num int, comp string) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile;

load data local inpath 'emp_details.txt' into table skills;

select count(ename), skill from skills group by skill;

