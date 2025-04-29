
# groupby 연습문제

# 1번 문제
# pokemon 테이블에 있는 포켓몬 수를 구하는 쿼리를 작성해주세요.
SELECT 
  COUNT(*) AS num_of_pokemon
FROM `study-sql-basic.basic.pokemon`

# 2번 문제
# 포켓몬이 세대 별로 얼마나 있는지 구하는 쿼리를 작성해주세요.

# 내 답안
/*
generation	count
num_of_pokemon_by_gen
151
100
*/
SELECT 
  COUNT(generation) AS num_of_pokemon_by_gen
FROM `study-sql-basic.basic.pokemon`
GROUP BY generation

# 강의 답안
/*
generation	count
1	151
2	100
*/
SELECT
  generation -- 정보를 줄 수 있는 컬럼 하나 추가
  , COUNT(id) AS count
FROM `study-sql-basic.basic.pokemon`
GROUP BY generation -- GROUP BY 기준이 되는 컬럼이 SELECT에 반드시 있어야 함.

# 3번 문제
# 포켓몬의 수를 타입별로 집계하고, 포켓몬의 수가 10이상인 타입만 남기는 쿼리를 작성해주세요. 포켓몬의 수가 많은 순으로 정렬해주세요.

-- HAVING으로 풀기
SELECT
  type1 AS type
  , COUNT(id) AS num_of_type
FROM `study-sql-basic.basic.pokemon`
GROUP BY type1
HAVING num_of_type >= 10
ORDER BY num_of_type DESC

-- 서브쿼리로 풀기
SELECT *
FROM (
  SELECT 
    type1 AS type
    , COUNT(id) AS num_of_type
  FROM `study-sql-basic.basic.pokemon`
  GROUP BY type1
)
WHERE
  num_of_type >= 10














