drop table if exists merged_3_months;
drop table if exists temp;

create table if not exists temp as
select 
case when l1.province_id is null then (case when l2.province_id is null then l3.province_id else l2.province_id end ) else l1.province_id end as province_id,
case when l1.city_id is null then (case when l2.city_id is null then l3.city_id else l2.city_id end) else l1.city_id end as city_id,
case when l1.class_id is null then (case when l2.class_id is null then l3.class_id else l2.class_id end) else l1.class_id end as class_id,
case when l1.sale_date is null then (case when l2.sale_date is null then l3.sale_date else l2.sale_date end) else l1.sale_date end as sale_date,
case when l1.lm_sale is null then null else l1.lm_sale end as lm_sale, 
case when l2.l2m_sale is null then null else l2.l2m_sale end as l2m_sale, 
case when l3.l2m_sale is null then null else l3.l2m_sale end as l3m_sale
from last_month l1
full outer join 
	last_2_month l2
	on l1.province_id = l2.province_id 
	and l1.city_id = l2.city_id 
	and l1.class_id = l2.class_id 
	and l1.sale_date = l2.sale_date 
full outer join
	last_3_month l3
	on l1.province_id = l3.province_id 
	and l1.city_id = l3.city_id 
	and l1.class_id = l3.class_id 
	and l1.sale_date = l3.sale_date;
	
create table if not exists merged_3_months as
select province_id, city_id, class_id, sale_date, avg(lm_sale) as lm_sale, avg(l2m_sale) as l2m_sale, avg(l3m_sale) as l3m_sale
from temp
group by province_id, city_id, class_id, sale_date;

	
	

