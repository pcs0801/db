ALTER SESSION SET "_ORACLE_SCRIPT"=true;

-- 기존 사용자 삭제(MODEL)
drop user MODEL cascade;

-- 새로운 사용자 생성(MODEL)
create user MODEL identified by 1234
    default tablespace users
    temporary tablespace temp;
    
-- 권한 부여(MODEL)
grant connect, resource, dba to MODEL;

-- 테이블 스페이스 생성(데이터베이스가 저장 될 공간)
CREATE TABLESPACE FIRSTDATA
DATAFILE 'E:\oraclexe\oradata\XE\FIRST01.DBF' SIZE 10M;

-- 테이블 스페이스 생성
ALTER TABLESPACE FIRSTDATA
ADD DATAFILE 'E:\oraclexe\oradata\XE\FIRST02.DBF' SIZE 1M;

-- 테이블 스페이스 용량 수정(용량 수정 *용량은 크게만 가능함)
ALTER DATABASE
DATAFILE 'E:\oraclexe\oradata\XE\FIRST02.DBF' RESIZE 1M;

-- 테이블 스페이스 용량 자동 수정
ALTER DATABASE
DATAFILE 'E:\oraclexe\oradata\XE\FIRST01.DBF' AUTOEXTEND ON
NEXT 1M MAXSIZE 20M;

-- 테스트(TEST 사용자 생성)
CREATE USER TEST IDENTIFIED BY 1234
  DEFAULT TABLESPACE users
  TEMPORARY TABLESPACE temp;
    
grant connect, resource, dba to TEST;

drop user TEST1 cascade;
