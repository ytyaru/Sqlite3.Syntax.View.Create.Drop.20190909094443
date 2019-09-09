create table T(A integer);
create temp view positive_T as select * from T where 0<A;
select count(*) from main.sqlite_master where type='view';
select count(*) from temp.sqlite_master where type='view';

