# 1-17번 문제

# 1번 문제
# 포켓몬 중에 type2가 없는 포켓몬의 수를 집계하는 쿼리를 작성해주세요.
# 힌트: ~가 없다 => 컬럼 IS NULL
SELECT
  COUNT(id) AS type2_null_count
FROM `study-sql-basic.basic.pokemon`
WHERE 
  type2 IS NULL;

# 2번 문제
# type2가 없는 포켓몬의 type1과 type1의 포켓몬의 수를 알려주는 쿼리를 작성해주세요. 단, type1의 포켓몬 수가 큰 순으로 정렬해주세요.
-- 서브쿼리로 풀기
SELECT
  type1 AS type1_wity_no_type2
  , COUNT(id) AS count
FROM (
  SELECT 
    id AS id
    , type1 AS type1
  FROM `study-sql-basic.basic.pokemon`
  WHERE 
    type2 IS NULL
)
GROUP BY
  type1
ORDER BY 
  count DESC;

# 3번 문제
# type2 상관없이 type1 포켓몬 수를 알 수 있는 쿼리를 작성해주세요
SELECT
  type1
  , COUNT(id) AS count
FROM `study-sql-basic.basic.pokemon`
GROUP BY type1;

# 4번 문제
# 전설 여부에 따른 포켓몬 수를 알 수 있는 쿼리를 작성해주세요.
SELECT
  is_legendary
  , COUNT(id) AS count
FROM `study-sql-basic.basic.pokemon`
GROUP BY is_legendary;

# 5번 문제
# trainer 테이블에서 동명이인이 있는 이름은 무엇일까요? (한 번에 찾으려고 하지 않고 단계적으로 가도 괜찮습니다.)


# 6번 문제
# trainer 테이블에서 "Iris" 트레이너의 정보를 알 수 있는 쿼리를 작성해주세요.
SELECT *
FROM `study-sql-basic.basic.trainer`
WHERE
  name = 'Iris';


