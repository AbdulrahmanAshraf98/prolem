select * from (
    select top(1) u.name as results        from (
    select user_id ,  count(movie_id) as count_of_rated_movie
    from MovieRating  
    group by user_id 
)as ur
join Users as u
on ur.user_id =u.user_id 
order by  ur.count_of_rated_movie desc ,u.name asc
) as n
union all 
select * from (
    select top(1) m.title as results from (
    select movie_id, avg(cast(rating as float)) as avg_movie_rating
    from MovieRating
    where created_at between '2020-02-01' and '2020-02-29'
    group by movie_id
) as mr
join Movies as m 
on mr.movie_id = m.movie_id 
order by mr.avg_movie_rating desc , m.title asc
) as n_movie_id