create table T(A integer);
create view positive_T as select * from T;
drop view positive_T;
drop view if exists positive_T;

