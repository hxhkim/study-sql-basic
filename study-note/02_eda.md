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

* 자주 쓰는 것들
    - AVG() 평균
    - COUNT()
    - COUNTIF() 특정 조건을 만족하는 row 세기
    - MAX()
    - MIN()
    - SUM()
    - 집계한 후에 그룹화 -> HAVING
    - 집계 전에 그룹화 -> GROUP BY
    - 중복제거 -> DISTINCT (집계함수 안에서 주로 사용) 와 GROUP BY 둘 다 사용 가능

```sql
SELECT
    COUNT(DISTINT type)
FROM 
GROUP BY
```


