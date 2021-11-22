UNLOAD ('SELECT marketplace, product_category, product_title, review_id, helpful_votes, AVG(star_rating) as average_stars FROM public.reviews GROUP BY marketplace, product_category, product_title, review_id, helpful_votes ORDER BY helpful_votes DESC, average_stars DESC')
TO 's3://redshift-databucketpro-result/testunload/'
iam_role 'arn:aws:iam::647616946879:role/myredshiftrole';
