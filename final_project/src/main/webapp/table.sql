--Users 테이블 입니다.
CREATE TABLE PUSERS (
 ID VARCHAR2(50) PRIMARY KEY,
 PID VARCHAR2(50),
 PWD VARCHAR2(100) NOT NULL,
 NAME VARCHAR2(20) NOT NULL,
 PHONE VARCHAR2(30) NOT NULL,
 ADDR VARCHAR2(100) NOT NULL,
 FAVORITE VARCHAR2(300),
 EMAIL VARCHAR2(100),
 NAVEREMAIL VARCHAR2(100),
 UNIQID VARCHAR2(30),
 ISADMIN VARCHAR2(4),	--관리자 인지 판단
 DISABLED VARCHAR2(5),   --정지 회원인지 판단
 REGDATE DATE
 );
 -- Notice Table 
CREATE TABLE NOTICE(

nNo NUMBER PRIMARY KEY,   --  공지사항 번호 
nTitle  VARCHAR2(100), --  공지사항 제목  
nContent CLOB, --  공지사항 내용
REGDATE DATE -- 공지사항 등록일자
);

CREATE SEQUENCE notice_seq; - 공지사항 시퀀스

-- Product Table 
CREATE TABLE product(
id varchar2(30) -- 글 작성자
pNo NUMBER PRIMARY KEY, -- 상품 아이디
pTitle VARCHAR2(100),-- 상품 제목
pPrice VARCHAR2(100),-- 상품가격
pShipping VARCHAR2(30),-- 배송비 포함
pState VARCHAR2(20),-- 상품 상태
pChange VARCHAR2(20),--교환여부
pContents CLOB, --내용
pCategory VARCHAR2(30), -- 카테고리
pIsUsed VARCHAR2(10),-- 중고 여부
pRegdate DATE,-- 등록일자
orgFileName VARCHAR2(100),
saveFileName VARCHAR2(100),
fileSize NUMBER,
pWriter VARCHAR2(50),	
);

CREATE SEQUENCE prd_seq;

-- Coupon Table --
CREATE TABLE coupon(
cNo NUMBER PRIMARY KEY, -- 쿠폰 아이디 값
cSerial_Number VARCHAR2(100), -- 쿠폰 일련번호
cName VARCHAR2(250), -- 쿠폰 명
cDiscount_Amount VARCHAR2(100), -- 쿠폰 할인액(률)
id VARCHAR2(30), -- 쿠폰 사용자(회원아이디)
cIsUsed VARCHAR2(10), --쿠폰 사용여부
cRegdate DATE, -- 쿠폰 등록일자
cExpiration_Date DATE -- 쿠폰 만료일자
);

CREATE SEQUENCE coupon_seq;