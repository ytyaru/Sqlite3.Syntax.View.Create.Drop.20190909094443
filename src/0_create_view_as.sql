create table T(A integer);
insert into T values(-2),(-1),(0),(1),(2),(3),(4);
create view positive_T as select * from T where 0<A;
select * from positive_T;
.headers on
select * from sqlite_master where type='view';

