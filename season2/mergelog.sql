drop table if exists trainlog_14;

create table if not exists trainlog_14 as
select log(2,1+a.sale_quantity) as sale_quantity, a.province_id , a.city_id , a.sale_date , a.month, a.year, a.class_id ,
sin(a.month/12*3.1415926) as sin_month,

log(2,1+l2.avg_2) as avg_2, log(2,1+l2.med_2) as med_2, log(2,1+l2.max_2) as max_2, log(2,1+l2.min_2) as min_2, l2.std_2, l2.count_2 ,
log(2,1+l3.avg_3) as avg_3, log(2,1+l3.med_3) as med_3, log(2,1+l3.max_3) as max_3, log(2,1+l3.min_3) as min_3, l3.std_3 , l3.count_3 ,
log(2,1+l6.avg_6) as avg_6, log(2,1+l6.med_6) as med_6, log(2,1+l6.max_6) as max_6, log(2,1+l6.min_6) as min_6, l6.std_6 , l6.count_6 ,
log(2,1+l12.avg_12) as avg_12, log(2,1+l12.med_12) as med_12, log(2,1+l12.max_12) as max_12, log(2,1+l12.min_12) as min_12, l12.std_12 , l12.count_12 ,

log(2,1+l2g.avg_2) as avg_2g, log(2,1+l2g.med_2) as med_2g, log(2,1+l2g.max_2) as max_2g, log(2,1+l2g.min_2) as min_2g, l2g.std_2 as std_2g, l2g.count_2 as c_2g,
log(2,1+l3g.avg_3) as avg_3g, log(2,1+l3g.med_3) as med_3g, log(2,1+l3g.max_3) as max_3g, log(2,1+l3g.min_3) as min_3g, l3g.std_3 as std_3g, l3g.count_3 as c_3g,
log(2,1+l6g.avg_6) as avg_6g, log(2,1+l6g.med_6) as med_6g, log(2,1+l6g.max_6) as max_6g, log(2,1+l6g.min_6) as min_6g, l6g.std_6 as std_6g, l6g.count_6 as c_6g,
log(2,1+l12g.avg_12) as avg_12g, log(2,1+l12g.med_12) as med_12g, log(2,1+l12g.max_12) as max_12g, log(2,1+l12g.min_12) as min_12g, l12g.std_12 as std_12g, l12g.count_12 as c_12g,

log(2,1+lm.lm_sale) as lm_sale, log(2,1+lm.l2m_sale) as l2m_sale, log(2,1+lm.l3m_sale) as l3m_sale,
log(2,1+ly.ly_sale) as ly_sale,
case when 2*lm.lm_sale-lm.l2m_sale<0 then -999 else log(2,1+2*lm.lm_sale - lm.l2m_sale) end as em1,
case when 1.5*lm.lm_sale-0.5*lm.l3m_sale<0 then -999 else log(2,1+1.5*lm.lm_sale - 0.5*lm.l3m_sale) end as em2,
case when lm.l2m_sale = 0 then -999 else log(2,1+lm.lm_sale * lm.lm_sale / lm.l2m_sale) end as em3,
case when 2*lm.lm_sale-ly.ly_sale<0 then -999 else log(2,1+2*lm.lm_sale - ly.ly_sale) end as ey1,
case when ly.ly_sale =0 then -999 else log(2,1+lm.lm_sale * lm.lm_sale / ly.ly_sale) end as ey2,
log(2,1+re1.re1_avg) as re1_avg , log(2,1+re1.re1_min) as re1_min, log(2,1+re1.re1_max) as re1_max,
log(2,1+re2.re2_avg) as re2_avg, log(2,1+re2.re2_min) as re2_min, log(2,1+re2.re2_max) as re2_max,
ho.holidays ,ho.important ,ho.spring_month , ho.next_spring ,ho.last_spring ,ho.nd_month , 
ho.next_nd , ho.last_nd ,ho.labor_month ,ho.work_days , ho.newyear_month ,ho.next_newyear , ho.last_newyear 
from yc_car_sales_grouped a
left outer join lagging_feature_2 l2
  on a.sale_date = l2.sale_date 
  and a.province_id = l2.province_id 
  and a.city_id = l2.city_id
  and a.class_id = l2.class_id 
left outer join
	lagging_feature_3 l3
	on a.sale_date = l3.sale_date 
	and a.province_id = l3.province_id 
	and a.city_id = l3.city_id 
	and a.class_id = l3.class_id 
left outer join
	lagging_feature_6 l6
	on a.sale_date = l6.sale_date 
	and a.province_id = l6.province_id 
	and a.city_id = l6.city_id 
	and a.class_id = l6.class_id 
left outer join
	lagging_feature_12 l12
	on a.sale_date = l12.sale_date 
	and a.province_id = l12.province_id 
	and a.city_id = l12.city_id 
	and a.class_id = l12.class_id 
left outer join
	merged_3_months lm
	on a.sale_date = lm.sale_date 
	and a.class_id = lm.class_id 
	and a.province_id = lm.province_id 
	and a.city_id = lm.city_id 
left outer join
	lagging_feature_gap_2 l2g
	on a.sale_date = l2g.sale_date 
	and a.province_id = l2g.province_id 
	and a.city_id = l2g.city_id 
	and a.class_id = l2g.class_id 
left outer join
	lagging_feature_gap_3 l3g
	on a.sale_date = l3g.sale_date 
	and a.province_id = l3g.province_id 
	and a.city_id = l3g.city_id 
	and a.class_id = l3g.class_id 
left outer join
	lagging_feature_gap_6 l6g
	on a.sale_date = l6g.sale_date 
	and a.province_id = l6g.province_id 
	and a.city_id = l6g.city_id 
	and a.class_id = l6g.class_id 
left outer join
	lagging_feature_gap_12 l12g
	on a.sale_date = l12g.sale_date 
	and a.province_id = l12g.province_id 
	and a.city_id = l12g.city_id 
	and a.class_id = l12g.class_id 
left outer join 
	last_year ly
	on a.sale_date = ly.sale_date 
	and a.class_id = ly.class_id 
	and a.province_id = ly.province_id 
	and a.city_id = ly.city_id 
left outer join
	re1 re1
	on a.sale_date = re1.sale_date 
	and a.province_id = re1.province_id 
	and a.city_id = re1.city_id 
	and a.class_id = re1.class_id 
left outer join
	re2 re2
	on a.sale_date = re2.sale_date 
	and a.province_id = re2.province_id 
	and a.city_id = re2.city_id 
	and a.class_id = re2.class_id 
left outer join
	holiday ho 
	on a.sale_date = ho.sale_date;
	

