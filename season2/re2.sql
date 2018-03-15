SET odps.sql.type.system.odps2 = true;

drop table if exists re2;

create table if not exists re2 as
select l.province_id , l.city_id , l.class_id , l.sale_date ,
case month(l.sale_date)
when 1 then 0.87
when 2 then 0.5
when 3 then 0.7
when 4 then 1.18
when 5 then 1.05
when 6 then 0.96
when 7 then 0.98
when 8 then 1.15
when 9 then 1.19
when 10 then 1.12
when 11 then 1.03
when 12 then 1.28
end * l.l2m_sale as re2_avg,

case month(l.sale_date)
when 1 then 0.82
when 2 then 0.34
when 3 then 0.56
when 4 then 0.86
when 5 then 0.96
when 6 then 0.88
when 7 then 0.94
when 8 then 1.01
when 9 then 1.14
when 10 then 1.03
when 11 then 0.88
when 12 then 1.07
end * l.l2m_sale as re2_min,

case month(l.sale_date)
when 1 then 0.92
when 2 then 0.58
when 3 then 0.89
when 4 then 1.45
when 5 then 1.14
when 6 then 1.06
when 7 then 1.03
when 8 then 1.21
when 9 then 1.27
when 10 then 1.22
when 11 then 1.10
when 12 then 1.62
end * l.l2m_sale as re2_max
from last_2_month l;
