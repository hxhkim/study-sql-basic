# Section 3 데이터 탐색: 조건, 추출, 요약(집계)

## 2.1 Overview
- 백엔드 개발자에게 ERD를 받을 수 있는 경우에는, 받아서 확안.
- 받을 수 없는 경우에는 어쩔 수 없이, 자주 쓸 것 같은 테이블 먼저 하나씩 뜯어보면서 컬럼을 파악하는 정공법으로 가야함.

## 2.3 SELECT FROM WHERE

```sql
SELECT 
    col AS name
FROM project_id.dataset.table
WHERE
```

```sql
SELECT * EXCEPT col_wanna_except
FROM
WHERE
```

* AS는 컬럼에 별칭을 지어줄 때 사용함. -> 따옴표 없이 !!! (따옴표 넣는 것 흔한 실수)
* 컬럼 수가 엄청 많을 때 except가 아주 유용함.
* : 단위로 쿼리가 끝남. But 뎁스가 생기기 때문에 웬만하면 단일 쿼리로 파일 저장하는 것을 추천. 

* 쿼리 실행 순서
1. FROM
2. WHERE
3. SELECT

* JOIN을 해야하는 경우, 집합으로 도식해보면 좋음.
* bigquery 스캔 비용: 1TB $6
* 빅쿼리 기본 테이블은 정렬이 되어 있지 않은 상태임. (비용 최적화를 위함.)

## 2.5 집계

- 집계하다: 모을 집 + 계산할 계
    - 모아서 계산하다
    - 그룹화해서 계산하다

- 계산이라고 하면: 사칙연산, count, min, max, average 등

 ### 자주 쓰는 것들
    - AVG() 평균
    - COUNT()
    - COUNTIF() 특정 조건을 만족하는 row 세기
    - MAX()
    - MIN()
    - SUM()
    - GROUP BY
    - 중복을 제외하고 싶은 경우 -> DISTINCT (집계함수 안에서 주로 사용) 와 GROUP BY 둘 다 사용 가능

###  조건을 주는 WHERE과 HAVING의 차이점
    - WHERE: 테이블에 바로 조건을 걸고 싶을 때 사용. FROM절 바로 밑에 사용.
    - HAVING: GROUP BY를 한 상태에서 조건을 걸고 싶을 때 사용. GROUP BY절 이후에 사용.

```sql
SELECT
    COUNT(DISTINT type) AS type_count
FROM 
GROUP BY
HAVING
    type_count > 3
ORDER BY
```
### 서브쿼리
    - FROM절 안에 존재하는 또 다른 SELECT FROM WHERE
    - HAVING과 할 수 있는 것은 동일함. 다른 방법일 뿐.

### 기타
    - ORDER BY: 디폴트가 ASC (오름차순). DECS (내림차순-큰거부터 내려간다)
    - 순서는 LIMIT이 찐찐막이고, 그 바로 위에 ORDER BY

# 총정리
- 집계를 하고 싶은 경우: AVG(), MIN(), MAX() + 거의 GROUP BY와 함께 사용!
- 고윳값을 알고 싶은 경우: DISTINCT 혹은 GROUP BY -> 주로 COUNT(DISTICT column-name)
- 조건을 설정하고 싶은 경우: WHERE 혹은 HAVING
- 정렬하고 싶은 경우: ORDER BY
- 출력 갯수를 제한하고 싶은 경우: LIMIT
