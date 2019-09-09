create table T(A integer);
create view positive_T as select * from T;
drop view positive_T;
select count(*) from sqlite_master where type='view';

