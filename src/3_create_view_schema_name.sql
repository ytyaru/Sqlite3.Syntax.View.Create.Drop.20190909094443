create table T(A integer);
attach ':memory:' as 'mem';
create view mem.positive_T as select * from T where 0<A;
select count(*) from mem.sqlite_master where type='view';
select count(*) from main.sqlite_master where type='view';
select count(*) from temp.sqlite_master where type='view';

create table T(A integer);
insert into T values(1);
create view positive_T(B, C) as select A, 1 from T where 0<A;
.headers on
select * from positive_T;

