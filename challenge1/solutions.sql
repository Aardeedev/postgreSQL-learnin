/* 1. Find out how many complaints were received and sent on the same day */
select
	date_received,
	count(*)
from consumer_complaints cc
group by date_received
order by date_received


/* 2. extract the complaints received in New York */
select * from consumer_complaints cc
where state_name = 'NY'


/* 3. extract the complaints received in New York and California */
select * from consumer_complaints cc
where state_name in ('NY', 'CA')


/* 4. Extract all rows with the word 'Credit' in the product field */
select * from consumer_complaints cc
where product_name like '%Credit%'


/* 5. Extact all rows with the word 'Late' in the issue field */
select * from consumer_complaints cc
where issue like '%Late%'