To generate a sequence of prime numbers in MYSQL. Write a query to print all prime numbers less than or equal to 1000


drop temporary table if exists n;
create temporary table if not exists n
    select t2.c*100 + t1.c*10 + t0.c + 1 as seq from 
    (select 0 c union all select 1 c union all select 2 c union all select 3 c union all select 4 c union all select 5 c union all select 6 c union all select 7 c union all select 8 c union all select 9 c) t0,
    (select 0 c union all select 1 c union all select 2 c union all select 3 c union all select 4 c union all select 5 c union all select 6 c union all select 7 c union all select 8 c union all select 9 c) t1,
    (select 0 c union all select 1 c union all select 2 c union all select 3 c union all select 4 c union all select 5 c union all select 6 c union all select 7 c union all select 8 c union all select 9 c) t2
    having seq > 2 and seq % 2 != 0;

drop temporary table if exists q;
create temporary table if not exists q
    select *
    from n
    where seq <= 32;
alter table q add primary key seq (seq);

select 2 as p union all
select n.seq
from n
where not exists (
    select 1
    from q
    where q.seq < n.seq
      and n.seq mod q.seq = 0
);