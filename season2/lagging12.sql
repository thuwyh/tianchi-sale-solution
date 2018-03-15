drop table if exists lagging_feature_gap_12;

create table if not exists lagging_feature_gap_12 as
select province_id, city_id, class_id, to_date('20120101','yyyymmdd') as sale_date, avg(sale_quantity) as avg_12,median(sale_quantity) as med_12, max(sale_quantity) as max_12, min(sale_quantity) as min_12,stddev(sale_quantity) as std_12, count(sale_quantity) as count_12
from yc_car_sales_grouped a
where a.sale_date<to_date('20111201','yyyymmdd') and a.sale_date>=to_date('20101201','yyyymmdd')
group by province_id, city_id, class_id;

insert into lagging_feature_gap_12
select province_id, city_id, class_id, to_date('20120201','yyyymmdd') as sale_date, avg(sale_quantity) as avg_12,median(sale_quantity) as med_12, max(sale_quantity) as max_12, min(sale_quantity) as min_12,stddev(sale_quantity) as std_12, count(sale_quantity) as count_12
from yc_car_sales_grouped a
where a.sale_date<to_date('20120101','yyyymmdd') and a.sale_date>=to_date('20110101','yyyymmdd')
group by province_id, city_id, class_id;

insert into lagging_feature_gap_12
select province_id, city_id, class_id, to_date('20120301','yyyymmdd') as sale_date, avg(sale_quantity) as avg_12,median(sale_quantity) as med_12, max(sale_quantity) as max_12, min(sale_quantity) as min_12,stddev(sale_quantity) as std_12, count(sale_quantity) as count_12
from yc_car_sales_grouped a
where a.sale_date<to_date('20120201','yyyymmdd') and a.sale_date>=to_date('20110201','yyyymmdd')
group by province_id, city_id, class_id;

insert into lagging_feature_gap_12
select province_id, city_id, class_id, to_date('20120401','yyyymmdd') as sale_date, avg(sale_quantity) as avg_12,median(sale_quantity) as med_12, max(sale_quantity) as max_12, min(sale_quantity) as min_12,stddev(sale_quantity) as std_12, count(sale_quantity) as count_12
from yc_car_sales_grouped a
where a.sale_date<to_date('20120301','yyyymmdd') and a.sale_date>=to_date('20110301','yyyymmdd')
group by province_id, city_id, class_id;

insert into lagging_feature_gap_12
select province_id, city_id, class_id, to_date('20120501','yyyymmdd') as sale_date, avg(sale_quantity) as avg_12,median(sale_quantity) as med_12, max(sale_quantity) as max_12, min(sale_quantity) as min_12,stddev(sale_quantity) as std_12, count(sale_quantity) as count_12
from yc_car_sales_grouped a
where a.sale_date<to_date('20120401','yyyymmdd') and a.sale_date>=to_date('20110401','yyyymmdd')
group by province_id, city_id, class_id;

insert into lagging_feature_gap_12
select province_id, city_id, class_id, to_date('20120601','yyyymmdd') as sale_date, avg(sale_quantity) as avg_12,median(sale_quantity) as med_12, max(sale_quantity) as max_12, min(sale_quantity) as min_12,stddev(sale_quantity) as std_12, count(sale_quantity) as count_12
from yc_car_sales_grouped a
where a.sale_date<to_date('20120501','yyyymmdd') and a.sale_date>=to_date('20110501','yyyymmdd')
group by province_id, city_id, class_id;

insert into lagging_feature_gap_12
select province_id, city_id, class_id, to_date('20120701','yyyymmdd') as sale_date, avg(sale_quantity) as avg_12,median(sale_quantity) as med_12, max(sale_quantity) as max_12, min(sale_quantity) as min_12,stddev(sale_quantity) as std_12, count(sale_quantity) as count_12
from yc_car_sales_grouped a
where a.sale_date<to_date('20120601','yyyymmdd') and a.sale_date>=to_date('20110601','yyyymmdd')
group by province_id, city_id, class_id;

insert into lagging_feature_gap_12
select province_id, city_id, class_id, to_date('20120801','yyyymmdd') as sale_date, avg(sale_quantity) as avg_12,median(sale_quantity) as med_12, max(sale_quantity) as max_12, min(sale_quantity) as min_12,stddev(sale_quantity) as std_12, count(sale_quantity) as count_12
from yc_car_sales_grouped a
where a.sale_date<to_date('20120701','yyyymmdd') and a.sale_date>=to_date('20110701','yyyymmdd')
group by province_id, city_id, class_id;

insert into lagging_feature_gap_12
select province_id, city_id, class_id, to_date('20120901','yyyymmdd') as sale_date, avg(sale_quantity) as avg_12,median(sale_quantity) as med_12, max(sale_quantity) as max_12, min(sale_quantity) as min_12,stddev(sale_quantity) as std_12, count(sale_quantity) as count_12
from yc_car_sales_grouped a
where a.sale_date<to_date('20120801','yyyymmdd') and a.sale_date>=to_date('20110801','yyyymmdd')
group by province_id, city_id, class_id;

insert into lagging_feature_gap_12
select province_id, city_id, class_id, to_date('20121001','yyyymmdd') as sale_date, avg(sale_quantity) as avg_12,median(sale_quantity) as med_12, max(sale_quantity) as max_12, min(sale_quantity) as min_12,stddev(sale_quantity) as std_12, count(sale_quantity) as count_12
from yc_car_sales_grouped a
where a.sale_date<to_date('20120901','yyyymmdd') and a.sale_date>=to_date('20110901','yyyymmdd')
group by province_id, city_id, class_id;

insert into lagging_feature_gap_12
select province_id, city_id, class_id, to_date('20121101','yyyymmdd') as sale_date, avg(sale_quantity) as avg_12,median(sale_quantity) as med_12, max(sale_quantity) as max_12, min(sale_quantity) as min_12,stddev(sale_quantity) as std_12, count(sale_quantity) as count_12
from yc_car_sales_grouped a
where a.sale_date<to_date('20121001','yyyymmdd') and a.sale_date>=to_date('20111001','yyyymmdd')
group by province_id, city_id, class_id;

insert into lagging_feature_gap_12
select province_id, city_id, class_id, to_date('20121201','yyyymmdd') as sale_date, avg(sale_quantity) as avg_12,median(sale_quantity) as med_12, max(sale_quantity) as max_12, min(sale_quantity) as min_12,stddev(sale_quantity) as std_12, count(sale_quantity) as count_12
from yc_car_sales_grouped a
where a.sale_date<to_date('20121101','yyyymmdd') and a.sale_date>=to_date('20111101','yyyymmdd')
group by province_id, city_id, class_id;

insert into lagging_feature_gap_12
select province_id, city_id, class_id, to_date('20130101','yyyymmdd') as sale_date, avg(sale_quantity) as avg_12,median(sale_quantity) as med_12, max(sale_quantity) as max_12, min(sale_quantity) as min_12,stddev(sale_quantity) as std_12, count(sale_quantity) as count_12
from yc_car_sales_grouped a
where a.sale_date<to_date('20121201','yyyymmdd') and a.sale_date>=to_date('20111201','yyyymmdd')
group by province_id, city_id, class_id;

insert into lagging_feature_gap_12
select province_id, city_id, class_id, to_date('20130201','yyyymmdd') as sale_date, avg(sale_quantity) as avg_12,median(sale_quantity) as med_12, max(sale_quantity) as max_12, min(sale_quantity) as min_12,stddev(sale_quantity) as std_12, count(sale_quantity) as count_12
from yc_car_sales_grouped a
where a.sale_date<to_date('20130101','yyyymmdd') and a.sale_date>=to_date('20120101','yyyymmdd')
group by province_id, city_id, class_id;

insert into lagging_feature_gap_12
select province_id, city_id, class_id, to_date('20130301','yyyymmdd') as sale_date, avg(sale_quantity) as avg_12,median(sale_quantity) as med_12, max(sale_quantity) as max_12, min(sale_quantity) as min_12,stddev(sale_quantity) as std_12, count(sale_quantity) as count_12
from yc_car_sales_grouped a
where a.sale_date<to_date('20130201','yyyymmdd') and a.sale_date>=to_date('20120201','yyyymmdd')
group by province_id, city_id, class_id;

insert into lagging_feature_gap_12
select province_id, city_id, class_id, to_date('20130401','yyyymmdd') as sale_date, avg(sale_quantity) as avg_12,median(sale_quantity) as med_12, max(sale_quantity) as max_12, min(sale_quantity) as min_12,stddev(sale_quantity) as std_12, count(sale_quantity) as count_12
from yc_car_sales_grouped a
where a.sale_date<to_date('20130301','yyyymmdd') and a.sale_date>=to_date('20120301','yyyymmdd')
group by province_id, city_id, class_id;

insert into lagging_feature_gap_12
select province_id, city_id, class_id, to_date('20130501','yyyymmdd') as sale_date, avg(sale_quantity) as avg_12,median(sale_quantity) as med_12, max(sale_quantity) as max_12, min(sale_quantity) as min_12,stddev(sale_quantity) as std_12, count(sale_quantity) as count_12
from yc_car_sales_grouped a
where a.sale_date<to_date('20130401','yyyymmdd') and a.sale_date>=to_date('20120401','yyyymmdd')
group by province_id, city_id, class_id;

insert into lagging_feature_gap_12
select province_id, city_id, class_id, to_date('20130601','yyyymmdd') as sale_date, avg(sale_quantity) as avg_12,median(sale_quantity) as med_12, max(sale_quantity) as max_12, min(sale_quantity) as min_12,stddev(sale_quantity) as std_12, count(sale_quantity) as count_12
from yc_car_sales_grouped a
where a.sale_date<to_date('20130501','yyyymmdd') and a.sale_date>=to_date('20120501','yyyymmdd')
group by province_id, city_id, class_id;

insert into lagging_feature_gap_12
select province_id, city_id, class_id, to_date('20130701','yyyymmdd') as sale_date, avg(sale_quantity) as avg_12,median(sale_quantity) as med_12, max(sale_quantity) as max_12, min(sale_quantity) as min_12,stddev(sale_quantity) as std_12, count(sale_quantity) as count_12
from yc_car_sales_grouped a
where a.sale_date<to_date('20130601','yyyymmdd') and a.sale_date>=to_date('20120601','yyyymmdd')
group by province_id, city_id, class_id;

insert into lagging_feature_gap_12
select province_id, city_id, class_id, to_date('20130801','yyyymmdd') as sale_date, avg(sale_quantity) as avg_12,median(sale_quantity) as med_12, max(sale_quantity) as max_12, min(sale_quantity) as min_12,stddev(sale_quantity) as std_12, count(sale_quantity) as count_12
from yc_car_sales_grouped a
where a.sale_date<to_date('20130701','yyyymmdd') and a.sale_date>=to_date('20120701','yyyymmdd')
group by province_id, city_id, class_id;

insert into lagging_feature_gap_12
select province_id, city_id, class_id, to_date('20130901','yyyymmdd') as sale_date, avg(sale_quantity) as avg_12,median(sale_quantity) as med_12, max(sale_quantity) as max_12, min(sale_quantity) as min_12,stddev(sale_quantity) as std_12, count(sale_quantity) as count_12
from yc_car_sales_grouped a
where a.sale_date<to_date('20130801','yyyymmdd') and a.sale_date>=to_date('20120801','yyyymmdd')
group by province_id, city_id, class_id;

insert into lagging_feature_gap_12
select province_id, city_id, class_id, to_date('20131001','yyyymmdd') as sale_date, avg(sale_quantity) as avg_12,median(sale_quantity) as med_12, max(sale_quantity) as max_12, min(sale_quantity) as min_12,stddev(sale_quantity) as std_12, count(sale_quantity) as count_12
from yc_car_sales_grouped a
where a.sale_date<to_date('20130901','yyyymmdd') and a.sale_date>=to_date('20120901','yyyymmdd')
group by province_id, city_id, class_id;

insert into lagging_feature_gap_12
select province_id, city_id, class_id, to_date('20131101','yyyymmdd') as sale_date, avg(sale_quantity) as avg_12,median(sale_quantity) as med_12, max(sale_quantity) as max_12, min(sale_quantity) as min_12,stddev(sale_quantity) as std_12, count(sale_quantity) as count_12
from yc_car_sales_grouped a
where a.sale_date<to_date('20131001','yyyymmdd') and a.sale_date>=to_date('20121001','yyyymmdd')
group by province_id, city_id, class_id;

insert into lagging_feature_gap_12
select province_id, city_id, class_id, to_date('20131201','yyyymmdd') as sale_date, avg(sale_quantity) as avg_12,median(sale_quantity) as med_12, max(sale_quantity) as max_12, min(sale_quantity) as min_12,stddev(sale_quantity) as std_12, count(sale_quantity) as count_12
from yc_car_sales_grouped a
where a.sale_date<to_date('20131101','yyyymmdd') and a.sale_date>=to_date('20121101','yyyymmdd')
group by province_id, city_id, class_id;

insert into lagging_feature_gap_12
select province_id, city_id, class_id, to_date('20140101','yyyymmdd') as sale_date, avg(sale_quantity) as avg_12,median(sale_quantity) as med_12, max(sale_quantity) as max_12, min(sale_quantity) as min_12,stddev(sale_quantity) as std_12, count(sale_quantity) as count_12
from yc_car_sales_grouped a
where a.sale_date<to_date('20131201','yyyymmdd') and a.sale_date>=to_date('20121201','yyyymmdd')
group by province_id, city_id, class_id;

insert into lagging_feature_gap_12
select province_id, city_id, class_id, to_date('20140201','yyyymmdd') as sale_date, avg(sale_quantity) as avg_12,median(sale_quantity) as med_12, max(sale_quantity) as max_12, min(sale_quantity) as min_12,stddev(sale_quantity) as std_12, count(sale_quantity) as count_12
from yc_car_sales_grouped a
where a.sale_date<to_date('20140101','yyyymmdd') and a.sale_date>=to_date('20130101','yyyymmdd')
group by province_id, city_id, class_id;

insert into lagging_feature_gap_12
select province_id, city_id, class_id, to_date('20140301','yyyymmdd') as sale_date, avg(sale_quantity) as avg_12,median(sale_quantity) as med_12, max(sale_quantity) as max_12, min(sale_quantity) as min_12,stddev(sale_quantity) as std_12, count(sale_quantity) as count_12
from yc_car_sales_grouped a
where a.sale_date<to_date('20140201','yyyymmdd') and a.sale_date>=to_date('20130201','yyyymmdd')
group by province_id, city_id, class_id;

insert into lagging_feature_gap_12
select province_id, city_id, class_id, to_date('20140401','yyyymmdd') as sale_date, avg(sale_quantity) as avg_12,median(sale_quantity) as med_12, max(sale_quantity) as max_12, min(sale_quantity) as min_12,stddev(sale_quantity) as std_12, count(sale_quantity) as count_12
from yc_car_sales_grouped a
where a.sale_date<to_date('20140301','yyyymmdd') and a.sale_date>=to_date('20130301','yyyymmdd')
group by province_id, city_id, class_id;

insert into lagging_feature_gap_12
select province_id, city_id, class_id, to_date('20140501','yyyymmdd') as sale_date, avg(sale_quantity) as avg_12,median(sale_quantity) as med_12, max(sale_quantity) as max_12, min(sale_quantity) as min_12,stddev(sale_quantity) as std_12, count(sale_quantity) as count_12
from yc_car_sales_grouped a
where a.sale_date<to_date('20140401','yyyymmdd') and a.sale_date>=to_date('20130401','yyyymmdd')
group by province_id, city_id, class_id;

insert into lagging_feature_gap_12
select province_id, city_id, class_id, to_date('20140601','yyyymmdd') as sale_date, avg(sale_quantity) as avg_12,median(sale_quantity) as med_12, max(sale_quantity) as max_12, min(sale_quantity) as min_12,stddev(sale_quantity) as std_12, count(sale_quantity) as count_12
from yc_car_sales_grouped a
where a.sale_date<to_date('20140501','yyyymmdd') and a.sale_date>=to_date('20130501','yyyymmdd')
group by province_id, city_id, class_id;

insert into lagging_feature_gap_12
select province_id, city_id, class_id, to_date('20140701','yyyymmdd') as sale_date, avg(sale_quantity) as avg_12,median(sale_quantity) as med_12, max(sale_quantity) as max_12, min(sale_quantity) as min_12,stddev(sale_quantity) as std_12, count(sale_quantity) as count_12
from yc_car_sales_grouped a
where a.sale_date<to_date('20140601','yyyymmdd') and a.sale_date>=to_date('20130601','yyyymmdd')
group by province_id, city_id, class_id;

insert into lagging_feature_gap_12
select province_id, city_id, class_id, to_date('20140801','yyyymmdd') as sale_date, avg(sale_quantity) as avg_12,median(sale_quantity) as med_12, max(sale_quantity) as max_12, min(sale_quantity) as min_12,stddev(sale_quantity) as std_12, count(sale_quantity) as count_12
from yc_car_sales_grouped a
where a.sale_date<to_date('20140701','yyyymmdd') and a.sale_date>=to_date('20130701','yyyymmdd')
group by province_id, city_id, class_id;

insert into lagging_feature_gap_12
select province_id, city_id, class_id, to_date('20140901','yyyymmdd') as sale_date, avg(sale_quantity) as avg_12,median(sale_quantity) as med_12, max(sale_quantity) as max_12, min(sale_quantity) as min_12,stddev(sale_quantity) as std_12, count(sale_quantity) as count_12
from yc_car_sales_grouped a
where a.sale_date<to_date('20140801','yyyymmdd') and a.sale_date>=to_date('20130801','yyyymmdd')
group by province_id, city_id, class_id;

insert into lagging_feature_gap_12
select province_id, city_id, class_id, to_date('20141001','yyyymmdd') as sale_date, avg(sale_quantity) as avg_12,median(sale_quantity) as med_12, max(sale_quantity) as max_12, min(sale_quantity) as min_12,stddev(sale_quantity) as std_12, count(sale_quantity) as count_12
from yc_car_sales_grouped a
where a.sale_date<to_date('20140901','yyyymmdd') and a.sale_date>=to_date('20130901','yyyymmdd')
group by province_id, city_id, class_id;

insert into lagging_feature_gap_12
select province_id, city_id, class_id, to_date('20141101','yyyymmdd') as sale_date, avg(sale_quantity) as avg_12,median(sale_quantity) as med_12, max(sale_quantity) as max_12, min(sale_quantity) as min_12,stddev(sale_quantity) as std_12, count(sale_quantity) as count_12
from yc_car_sales_grouped a
where a.sale_date<to_date('20141001','yyyymmdd') and a.sale_date>=to_date('20131001','yyyymmdd')
group by province_id, city_id, class_id;

insert into lagging_feature_gap_12
select province_id, city_id, class_id, to_date('20141201','yyyymmdd') as sale_date, avg(sale_quantity) as avg_12,median(sale_quantity) as med_12, max(sale_quantity) as max_12, min(sale_quantity) as min_12,stddev(sale_quantity) as std_12, count(sale_quantity) as count_12
from yc_car_sales_grouped a
where a.sale_date<to_date('20141101','yyyymmdd') and a.sale_date>=to_date('20131101','yyyymmdd')
group by province_id, city_id, class_id;

insert into lagging_feature_gap_12
select province_id, city_id, class_id, to_date('20150101','yyyymmdd') as sale_date, avg(sale_quantity) as avg_12,median(sale_quantity) as med_12, max(sale_quantity) as max_12, min(sale_quantity) as min_12,stddev(sale_quantity) as std_12, count(sale_quantity) as count_12
from yc_car_sales_grouped a
where a.sale_date<to_date('20141201','yyyymmdd') and a.sale_date>=to_date('20131201','yyyymmdd')
group by province_id, city_id, class_id;

insert into lagging_feature_gap_12
select province_id, city_id, class_id, to_date('20150201','yyyymmdd') as sale_date, avg(sale_quantity) as avg_12,median(sale_quantity) as med_12, max(sale_quantity) as max_12, min(sale_quantity) as min_12,stddev(sale_quantity) as std_12, count(sale_quantity) as count_12
from yc_car_sales_grouped a
where a.sale_date<to_date('20150101','yyyymmdd') and a.sale_date>=to_date('20140101','yyyymmdd')
group by province_id, city_id, class_id;

insert into lagging_feature_gap_12
select province_id, city_id, class_id, to_date('20150301','yyyymmdd') as sale_date, avg(sale_quantity) as avg_12,median(sale_quantity) as med_12, max(sale_quantity) as max_12, min(sale_quantity) as min_12,stddev(sale_quantity) as std_12, count(sale_quantity) as count_12
from yc_car_sales_grouped a
where a.sale_date<to_date('20150201','yyyymmdd') and a.sale_date>=to_date('20140201','yyyymmdd')
group by province_id, city_id, class_id;

insert into lagging_feature_gap_12
select province_id, city_id, class_id, to_date('20150401','yyyymmdd') as sale_date, avg(sale_quantity) as avg_12,median(sale_quantity) as med_12, max(sale_quantity) as max_12, min(sale_quantity) as min_12,stddev(sale_quantity) as std_12, count(sale_quantity) as count_12
from yc_car_sales_grouped a
where a.sale_date<to_date('20150301','yyyymmdd') and a.sale_date>=to_date('20140301','yyyymmdd')
group by province_id, city_id, class_id;

insert into lagging_feature_gap_12
select province_id, city_id, class_id, to_date('20150501','yyyymmdd') as sale_date, avg(sale_quantity) as avg_12,median(sale_quantity) as med_12, max(sale_quantity) as max_12, min(sale_quantity) as min_12,stddev(sale_quantity) as std_12, count(sale_quantity) as count_12
from yc_car_sales_grouped a
where a.sale_date<to_date('20150401','yyyymmdd') and a.sale_date>=to_date('20140401','yyyymmdd')
group by province_id, city_id, class_id;

insert into lagging_feature_gap_12
select province_id, city_id, class_id, to_date('20150601','yyyymmdd') as sale_date, avg(sale_quantity) as avg_12,median(sale_quantity) as med_12, max(sale_quantity) as max_12, min(sale_quantity) as min_12,stddev(sale_quantity) as std_12, count(sale_quantity) as count_12
from yc_car_sales_grouped a
where a.sale_date<to_date('20150501','yyyymmdd') and a.sale_date>=to_date('20140501','yyyymmdd')
group by province_id, city_id, class_id;

insert into lagging_feature_gap_12
select province_id, city_id, class_id, to_date('20150701','yyyymmdd') as sale_date, avg(sale_quantity) as avg_12,median(sale_quantity) as med_12, max(sale_quantity) as max_12, min(sale_quantity) as min_12,stddev(sale_quantity) as std_12, count(sale_quantity) as count_12
from yc_car_sales_grouped a
where a.sale_date<to_date('20150601','yyyymmdd') and a.sale_date>=to_date('20140601','yyyymmdd')
group by province_id, city_id, class_id;

insert into lagging_feature_gap_12
select province_id, city_id, class_id, to_date('20150801','yyyymmdd') as sale_date, avg(sale_quantity) as avg_12,median(sale_quantity) as med_12, max(sale_quantity) as max_12, min(sale_quantity) as min_12,stddev(sale_quantity) as std_12, count(sale_quantity) as count_12
from yc_car_sales_grouped a
where a.sale_date<to_date('20150701','yyyymmdd') and a.sale_date>=to_date('20140701','yyyymmdd')
group by province_id, city_id, class_id;

insert into lagging_feature_gap_12
select province_id, city_id, class_id, to_date('20150901','yyyymmdd') as sale_date, avg(sale_quantity) as avg_12,median(sale_quantity) as med_12, max(sale_quantity) as max_12, min(sale_quantity) as min_12,stddev(sale_quantity) as std_12, count(sale_quantity) as count_12
from yc_car_sales_grouped a
where a.sale_date<to_date('20150801','yyyymmdd') and a.sale_date>=to_date('20140801','yyyymmdd')
group by province_id, city_id, class_id;

insert into lagging_feature_gap_12
select province_id, city_id, class_id, to_date('20151001','yyyymmdd') as sale_date, avg(sale_quantity) as avg_12,median(sale_quantity) as med_12, max(sale_quantity) as max_12, min(sale_quantity) as min_12,stddev(sale_quantity) as std_12, count(sale_quantity) as count_12
from yc_car_sales_grouped a
where a.sale_date<to_date('20150901','yyyymmdd') and a.sale_date>=to_date('20140901','yyyymmdd')
group by province_id, city_id, class_id;

insert into lagging_feature_gap_12
select province_id, city_id, class_id, to_date('20151101','yyyymmdd') as sale_date, avg(sale_quantity) as avg_12,median(sale_quantity) as med_12, max(sale_quantity) as max_12, min(sale_quantity) as min_12,stddev(sale_quantity) as std_12, count(sale_quantity) as count_12
from yc_car_sales_grouped a
where a.sale_date<to_date('20151001','yyyymmdd') and a.sale_date>=to_date('20141001','yyyymmdd')
group by province_id, city_id, class_id;

insert into lagging_feature_gap_12
select province_id, city_id, class_id, to_date('20151201','yyyymmdd') as sale_date, avg(sale_quantity) as avg_12,median(sale_quantity) as med_12, max(sale_quantity) as max_12, min(sale_quantity) as min_12,stddev(sale_quantity) as std_12, count(sale_quantity) as count_12
from yc_car_sales_grouped a
where a.sale_date<to_date('20151101','yyyymmdd') and a.sale_date>=to_date('20141101','yyyymmdd')
group by province_id, city_id, class_id;

insert into lagging_feature_gap_12
select province_id, city_id, class_id, to_date('20160101','yyyymmdd') as sale_date, avg(sale_quantity) as avg_12,median(sale_quantity) as med_12, max(sale_quantity) as max_12, min(sale_quantity) as min_12,stddev(sale_quantity) as std_12, count(sale_quantity) as count_12
from yc_car_sales_grouped a
where a.sale_date<to_date('20151201','yyyymmdd') and a.sale_date>=to_date('20141201','yyyymmdd')
group by province_id, city_id, class_id;

insert into lagging_feature_gap_12
select province_id, city_id, class_id, to_date('20160201','yyyymmdd') as sale_date, avg(sale_quantity) as avg_12,median(sale_quantity) as med_12, max(sale_quantity) as max_12, min(sale_quantity) as min_12,stddev(sale_quantity) as std_12, count(sale_quantity) as count_12
from yc_car_sales_grouped a
where a.sale_date<to_date('20160101','yyyymmdd') and a.sale_date>=to_date('20150101','yyyymmdd')
group by province_id, city_id, class_id;

insert into lagging_feature_gap_12
select province_id, city_id, class_id, to_date('20160301','yyyymmdd') as sale_date, avg(sale_quantity) as avg_12,median(sale_quantity) as med_12, max(sale_quantity) as max_12, min(sale_quantity) as min_12,stddev(sale_quantity) as std_12, count(sale_quantity) as count_12
from yc_car_sales_grouped a
where a.sale_date<to_date('20160201','yyyymmdd') and a.sale_date>=to_date('20150201','yyyymmdd')
group by province_id, city_id, class_id;

insert into lagging_feature_gap_12
select province_id, city_id, class_id, to_date('20160401','yyyymmdd') as sale_date, avg(sale_quantity) as avg_12,median(sale_quantity) as med_12, max(sale_quantity) as max_12, min(sale_quantity) as min_12,stddev(sale_quantity) as std_12, count(sale_quantity) as count_12
from yc_car_sales_grouped a
where a.sale_date<to_date('20160301','yyyymmdd') and a.sale_date>=to_date('20150301','yyyymmdd')
group by province_id, city_id, class_id;

insert into lagging_feature_gap_12
select province_id, city_id, class_id, to_date('20160501','yyyymmdd') as sale_date, avg(sale_quantity) as avg_12,median(sale_quantity) as med_12, max(sale_quantity) as max_12, min(sale_quantity) as min_12,stddev(sale_quantity) as std_12, count(sale_quantity) as count_12
from yc_car_sales_grouped a
where a.sale_date<to_date('20160401','yyyymmdd') and a.sale_date>=to_date('20150401','yyyymmdd')
group by province_id, city_id, class_id;

insert into lagging_feature_gap_12
select province_id, city_id, class_id, to_date('20160601','yyyymmdd') as sale_date, avg(sale_quantity) as avg_12,median(sale_quantity) as med_12, max(sale_quantity) as max_12, min(sale_quantity) as min_12,stddev(sale_quantity) as std_12, count(sale_quantity) as count_12
from yc_car_sales_grouped a
where a.sale_date<to_date('20160501','yyyymmdd') and a.sale_date>=to_date('20150501','yyyymmdd')
group by province_id, city_id, class_id;

insert into lagging_feature_gap_12
select province_id, city_id, class_id, to_date('20160701','yyyymmdd') as sale_date, avg(sale_quantity) as avg_12,median(sale_quantity) as med_12, max(sale_quantity) as max_12, min(sale_quantity) as min_12,stddev(sale_quantity) as std_12, count(sale_quantity) as count_12
from yc_car_sales_grouped a
where a.sale_date<to_date('20160601','yyyymmdd') and a.sale_date>=to_date('20150601','yyyymmdd')
group by province_id, city_id, class_id;

insert into lagging_feature_gap_12
select province_id, city_id, class_id, to_date('20160801','yyyymmdd') as sale_date, avg(sale_quantity) as avg_12,median(sale_quantity) as med_12, max(sale_quantity) as max_12, min(sale_quantity) as min_12,stddev(sale_quantity) as std_12, count(sale_quantity) as count_12
from yc_car_sales_grouped a
where a.sale_date<to_date('20160701','yyyymmdd') and a.sale_date>=to_date('20150701','yyyymmdd')
group by province_id, city_id, class_id;

insert into lagging_feature_gap_12
select province_id, city_id, class_id, to_date('20160901','yyyymmdd') as sale_date, avg(sale_quantity) as avg_12,median(sale_quantity) as med_12, max(sale_quantity) as max_12, min(sale_quantity) as min_12,stddev(sale_quantity) as std_12, count(sale_quantity) as count_12
from yc_car_sales_grouped a
where a.sale_date<to_date('20160801','yyyymmdd') and a.sale_date>=to_date('20150801','yyyymmdd')
group by province_id, city_id, class_id;

insert into lagging_feature_gap_12
select province_id, city_id, class_id, to_date('20161001','yyyymmdd') as sale_date, avg(sale_quantity) as avg_12,median(sale_quantity) as med_12, max(sale_quantity) as max_12, min(sale_quantity) as min_12,stddev(sale_quantity) as std_12, count(sale_quantity) as count_12
from yc_car_sales_grouped a
where a.sale_date<to_date('20160901','yyyymmdd') and a.sale_date>=to_date('20150901','yyyymmdd')
group by province_id, city_id, class_id;

insert into lagging_feature_gap_12
select province_id, city_id, class_id, to_date('20161101','yyyymmdd') as sale_date, avg(sale_quantity) as avg_12,median(sale_quantity) as med_12, max(sale_quantity) as max_12, min(sale_quantity) as min_12,stddev(sale_quantity) as std_12, count(sale_quantity) as count_12
from yc_car_sales_grouped a
where a.sale_date<to_date('20161001','yyyymmdd') and a.sale_date>=to_date('20151001','yyyymmdd')
group by province_id, city_id, class_id;

insert into lagging_feature_gap_12
select province_id, city_id, class_id, to_date('20161201','yyyymmdd') as sale_date, avg(sale_quantity) as avg_12,median(sale_quantity) as med_12, max(sale_quantity) as max_12, min(sale_quantity) as min_12,stddev(sale_quantity) as std_12, count(sale_quantity) as count_12
from yc_car_sales_grouped a
where a.sale_date<to_date('20161101','yyyymmdd') and a.sale_date>=to_date('20151101','yyyymmdd')
group by province_id, city_id, class_id;

insert into lagging_feature_gap_12
select province_id, city_id, class_id, to_date('20170101','yyyymmdd') as sale_date, avg(sale_quantity) as avg_12,median(sale_quantity) as med_12, max(sale_quantity) as max_12, min(sale_quantity) as min_12,stddev(sale_quantity) as std_12, count(sale_quantity) as count_12
from yc_car_sales_grouped a
where a.sale_date<to_date('20161201','yyyymmdd') and a.sale_date>=to_date('20151201','yyyymmdd')
group by province_id, city_id, class_id;

insert into lagging_feature_gap_12
select province_id, city_id, class_id, to_date('20170201','yyyymmdd') as sale_date, avg(sale_quantity) as avg_12,median(sale_quantity) as med_12, max(sale_quantity) as max_12, min(sale_quantity) as min_12,stddev(sale_quantity) as std_12, count(sale_quantity) as count_12
from yc_car_sales_grouped a
where a.sale_date<to_date('20170101','yyyymmdd') and a.sale_date>=to_date('20160101','yyyymmdd')
group by province_id, city_id, class_id;

insert into lagging_feature_gap_12
select province_id, city_id, class_id, to_date('20170301','yyyymmdd') as sale_date, avg(sale_quantity) as avg_12,median(sale_quantity) as med_12, max(sale_quantity) as max_12, min(sale_quantity) as min_12,stddev(sale_quantity) as std_12, count(sale_quantity) as count_12
from yc_car_sales_grouped a
where a.sale_date<to_date('20170201','yyyymmdd') and a.sale_date>=to_date('20160201','yyyymmdd')
group by province_id, city_id, class_id;

insert into lagging_feature_gap_12
select province_id, city_id, class_id, to_date('20170401','yyyymmdd') as sale_date, avg(sale_quantity) as avg_12,median(sale_quantity) as med_12, max(sale_quantity) as max_12, min(sale_quantity) as min_12,stddev(sale_quantity) as std_12, count(sale_quantity) as count_12
from yc_car_sales_grouped a
where a.sale_date<to_date('20170301','yyyymmdd') and a.sale_date>=to_date('20160301','yyyymmdd')
group by province_id, city_id, class_id;

insert into lagging_feature_gap_12
select province_id, city_id, class_id, to_date('20170501','yyyymmdd') as sale_date, avg(sale_quantity) as avg_12,median(sale_quantity) as med_12, max(sale_quantity) as max_12, min(sale_quantity) as min_12,stddev(sale_quantity) as std_12, count(sale_quantity) as count_12
from yc_car_sales_grouped a
where a.sale_date<to_date('20170401','yyyymmdd') and a.sale_date>=to_date('20160401','yyyymmdd')
group by province_id, city_id, class_id;

insert into lagging_feature_gap_12
select province_id, city_id, class_id, to_date('20170601','yyyymmdd') as sale_date, avg(sale_quantity) as avg_12,median(sale_quantity) as med_12, max(sale_quantity) as max_12, min(sale_quantity) as min_12,stddev(sale_quantity) as std_12, count(sale_quantity) as count_12
from yc_car_sales_grouped a
where a.sale_date<to_date('20170501','yyyymmdd') and a.sale_date>=to_date('20160501','yyyymmdd')
group by province_id, city_id, class_id;

insert into lagging_feature_gap_12
select province_id, city_id, class_id, to_date('20170701','yyyymmdd') as sale_date, avg(sale_quantity) as avg_12,median(sale_quantity) as med_12, max(sale_quantity) as max_12, min(sale_quantity) as min_12,stddev(sale_quantity) as std_12, count(sale_quantity) as count_12
from yc_car_sales_grouped a
where a.sale_date<to_date('20170601','yyyymmdd') and a.sale_date>=to_date('20160601','yyyymmdd')
group by province_id, city_id, class_id;

insert into lagging_feature_gap_12
select province_id, city_id, class_id, to_date('20170801','yyyymmdd') as sale_date, avg(sale_quantity) as avg_12,median(sale_quantity) as med_12, max(sale_quantity) as max_12, min(sale_quantity) as min_12,stddev(sale_quantity) as std_12, count(sale_quantity) as count_12
from yc_car_sales_grouped a
where a.sale_date<to_date('20170701','yyyymmdd') and a.sale_date>=to_date('20160701','yyyymmdd')
group by province_id, city_id, class_id;

insert into lagging_feature_gap_12
select province_id, city_id, class_id, to_date('20170901','yyyymmdd') as sale_date, avg(sale_quantity) as avg_12,median(sale_quantity) as med_12, max(sale_quantity) as max_12, min(sale_quantity) as min_12,stddev(sale_quantity) as std_12, count(sale_quantity) as count_12
from yc_car_sales_grouped a
where a.sale_date<to_date('20170801','yyyymmdd') and a.sale_date>=to_date('20160801','yyyymmdd')
group by province_id, city_id, class_id;

insert into lagging_feature_gap_12
select province_id, city_id, class_id, to_date('20171001','yyyymmdd') as sale_date, avg(sale_quantity) as avg_12,median(sale_quantity) as med_12, max(sale_quantity) as max_12, min(sale_quantity) as min_12,stddev(sale_quantity) as std_12, count(sale_quantity) as count_12
from yc_car_sales_grouped a
where a.sale_date<to_date('20170901','yyyymmdd') and a.sale_date>=to_date('20160901','yyyymmdd')
group by province_id, city_id, class_id;

insert into lagging_feature_gap_12
select province_id, city_id, class_id, to_date('20171101','yyyymmdd') as sale_date, avg(sale_quantity) as avg_12,median(sale_quantity) as med_12, max(sale_quantity) as max_12, min(sale_quantity) as min_12,stddev(sale_quantity) as std_12, count(sale_quantity) as count_12
from yc_car_sales_grouped a
where a.sale_date<to_date('20171001','yyyymmdd') and a.sale_date>=to_date('20161001','yyyymmdd')
group by province_id, city_id, class_id;

insert into lagging_feature_gap_12
select province_id, city_id, class_id, to_date('20171201','yyyymmdd') as sale_date, avg(sale_quantity) as avg_12,median(sale_quantity) as med_12, max(sale_quantity) as max_12, min(sale_quantity) as min_12,stddev(sale_quantity) as std_12, count(sale_quantity) as count_12
from yc_car_sales_grouped a
where a.sale_date<to_date('20171101','yyyymmdd') and a.sale_date>=to_date('20161101','yyyymmdd')
group by province_id, city_id, class_id;

insert into lagging_feature_gap_12
select province_id, city_id, class_id, to_date('20180101','yyyymmdd') as sale_date, avg(sale_quantity) as avg_12,median(sale_quantity) as med_12, max(sale_quantity) as max_12, min(sale_quantity) as min_12,stddev(sale_quantity) as std_12, count(sale_quantity) as count_12
from yc_car_sales_grouped a
where a.sale_date<to_date('20171201','yyyymmdd') and a.sale_date>=to_date('20161201','yyyymmdd')
group by province_id, city_id, class_id;

insert into lagging_feature_gap_12
select province_id, city_id, class_id, to_date('20180201','yyyymmdd') as sale_date, avg(sale_quantity) as avg_12,median(sale_quantity) as med_12, max(sale_quantity) as max_12, min(sale_quantity) as min_12,stddev(sale_quantity) as std_12, count(sale_quantity) as count_12
from yc_car_sales_grouped a
where a.sale_date<to_date('20180101','yyyymmdd') and a.sale_date>=to_date('20170101','yyyymmdd')
group by province_id, city_id, class_id;
