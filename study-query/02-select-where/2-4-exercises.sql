# 1번 문제
SELECT *
FROM `study-sql-basic.basic.trainer` 

# 2번 문제
# trainer 테이블에 있는 트레이너의 name을 출력하는 쿼리를 작성해주세요.
SELECT name AS trainer_name
FROM `study-sql-basic.basic.trainer` 

# 3번 문제
# trainer 테이블에 있는 트레이너의 name, age를 출력하는 쿼리를 작성해주세요.
SELECT
  name AS trainer_name
  , age AS train_age
FROM `study-sql-basic.basic.trainer` 

# 4번 문제
# trainer 테이블에서 id가 3인 trainer의 name, age, hometown을 출력하는 쿼리를 작성해주세요.
SELECT 
  name
  , age
  , hometown
FROM `study-sql-basic.basic.trainer` 
WHERE
  id = 3 -- datetype이 num이면 따옴표 없어도 됨.

# 5번 문제
# pokemon 테이블에서 "피카츄"의 공격력과 체력을 확인할 수 있는 쿼리를 작성해주세요.
SELECT 
  kor_name
  , attack AS `공격력` -- 한글로 컬럼명 지정하고자 할 겅우 백틱(`)을 사용해야함.
  , hp AS `체력`
FROM `study-sql-basic.basic.pokemon`
WHERE
  kor_name = "피카츄"


SELECT *
FROM `study-sql-basic.basic.battle` 
LIMIT 10

```
id: 21
player1_id: 1
player2_id: 2
winner_id: 1
battle_date: 2023-07-04
battle_datetime: 2023-07-04 21:44:00 UTC
battle_timestamp: 1688474640
```

SELECT *
FROM `study-sql-basic.basic.pokemon` 
LIMIT 10

```
id: 1
kor_name: 이상해씨
eng_name: Bulbasaur
type1: Grass
type2: Poison
total: 318
hp: 45
attack: 49
defense: 49
special_attack: 65
special_defense: 65
speed: 45
gernation: 1
is_legendary: false
```

SELECT *
FROM `study-sql-basic.basic.trainer` 
LIMIT 10

```
id: 13
name: Goh
age: 10
hometown: Seoul
preferred_pokemon_type: Bug
badge_count: 1
achievement_level: Beginner
```

SELECT *
FROM `study-sql-basic.basic.trainer_pokemon` 
LIMIT 10

```
id: 208
trainer_id: 88
pokemon_id: 43
level: 5
experience_point: 140
current_health: 22
catch_date: 2023-07-14
catch_datetime: 2023-07-14 00:56:00 UTC
location: Busan
status: Active
```