DROP TABLE "REVIEW";

CREATE TABLE "REVIEW" (
	"REVIEW_NO"	NUMBER		NOT NULL,
	"REVIEW_CONTENT"	VARCHAR2(4000)		NOT NULL,
	"REVIEW_ENROLL_DT"	DATE		NOT NULL,
	"STAR_RATING"	NUMBER		NOT NULL,
	"MEMBER_NO"	NUMBER		NOT NULL,
	"P_CD"	NUMBER		NULL,
	"P_ORDER_CD"	VARCHAR2(20)		NULL,
	"S_ORDER_CD"	VARCHAR2(20)		NULL
);

COMMENT ON COLUMN "REVIEW"."REVIEW_NO" IS '게시글 번호';

COMMENT ON COLUMN "REVIEW"."REVIEW_CONTENT" IS '리뷰 내용';

COMMENT ON COLUMN "REVIEW"."REVIEW_ENROLL_DT" IS '작성일';

COMMENT ON COLUMN "REVIEW"."STAR_RATING" IS '별점';

COMMENT ON COLUMN "REVIEW"."MEMBER_NO" IS '회원 번호';

COMMENT ON COLUMN "REVIEW"."P_CD" IS '상품 코드';

COMMENT ON COLUMN "REVIEW"."P_ORDER_CD" IS '주문코드';

COMMENT ON COLUMN "REVIEW"."S_ORDER_CD" IS '구독 상품 주문 코드';

DROP TABLE "PRODUCT";

CREATE TABLE "PRODUCT" (
	"P_CD"	NUMBER		NOT NULL,
	"P_CATEGORY_NO"	NUMBER		NOT NULL,
	"FARM_NO"	NUMBER		NOT NULL,
	"PRODUCT_NM"	VARCHAR2(50)		NOT NULL,
	"PRODUCT_PRICE"	NUMBER		NOT NULL,
	"PRODUCT_ST"	CHAR(1)	DEFAULT 'I'	NOT NULL,
	"PRODUCT_INFO"	CLOB		NULL,
	"PR_DATE"	DATE	DEFAULT SYSDATE	NOT NULL,
	"PU_DATE"	DATE		NULL
);

COMMENT ON COLUMN "PRODUCT"."P_CD" IS '상품 코드';

COMMENT ON COLUMN "PRODUCT"."P_CATEGORY_NO" IS '카테고리 번호';

COMMENT ON COLUMN "PRODUCT"."FARM_NO" IS '농장 번호';

COMMENT ON COLUMN "PRODUCT"."PRODUCT_NM" IS '상품명';

COMMENT ON COLUMN "PRODUCT"."PRODUCT_PRICE" IS '상품 가격';

COMMENT ON COLUMN "PRODUCT"."PRODUCT_ST" IS '상품 상태(입고IN, 품절OUT)';

COMMENT ON COLUMN "PRODUCT"."PRODUCT_INFO" IS '상품 설명 및 주문 전 확인 정보';

COMMENT ON COLUMN "PRODUCT"."PR_DATE" IS '상품등록일';

COMMENT ON COLUMN "PRODUCT"."PU_DATE" IS '상품 정보 수정일';

DROP TABLE "ADMIN";

CREATE TABLE "ADMIN" (
	"ADMIN_NO"	NUMBER		NOT NULL,
	"ADMIN_EMAIL"	VARCHAR2(50)		NOT NULL,
	"ADMIN_PW"	VARCHAR2(50)		NOT NULL,
	"ADMIN_NAME"	VARCHAR2(30)		NOT NULL,
	"ADMIN_P_IMG"	VARCHAR2(200)		NOT NULL
);

COMMENT ON COLUMN "ADMIN"."ADMIN_NO" IS '관리자 번호';

COMMENT ON COLUMN "ADMIN"."ADMIN_EMAIL" IS '관리자 아이디';

COMMENT ON COLUMN "ADMIN"."ADMIN_PW" IS '관리자 비밀번호';

COMMENT ON COLUMN "ADMIN"."ADMIN_NAME" IS '관리자 이름';

COMMENT ON COLUMN "ADMIN"."ADMIN_P_IMG" IS '관리자 프로필 이미지';

DROP TABLE "CART";

CREATE TABLE "CART" (
	"CART_NO"	NUMBER		NOT NULL,
	"MEMBER_NO"	NUMBER		NOT NULL,
	"OPTION_NO"	NUMBER		NOT NULL
);

COMMENT ON COLUMN "CART"."CART_NO" IS '장바구니 번호';

COMMENT ON COLUMN "CART"."MEMBER_NO" IS '장바구니 이용 회원';

COMMENT ON COLUMN "CART"."OPTION_NO" IS '옵션 번호';

DROP TABLE "P_CATEGORY";

CREATE TABLE "P_CATEGORY" (
	"P_CATEGORY_NO"	NUMBER		NOT NULL,
	"P_CATEGORY_NM"	VARCHAR2(20)		NOT NULL
);

COMMENT ON COLUMN "P_CATEGORY"."P_CATEGORY_NO" IS '카테고리 번호';

COMMENT ON COLUMN "P_CATEGORY"."P_CATEGORY_NM" IS '카테고리명';

DROP TABLE "PRODUCT_ORDER";

CREATE TABLE "PRODUCT_ORDER" (
	"P_ORDER_CD"	VARCHAR2(20)		NOT NULL,
	"P_ORDER_DT"	DATE	DEFAULT SYSDATE	NOT NULL,
	"P_ORDER_NM"	VARCHAR2(30)		NOT NULL,
	"P_ORDER_PHONE"	VARCHAR2(20)		NOT NULL,
	"P_ORDER_ADDR"	VARCHAR2(500)		NOT NULL,
	"TOTAL_PRICE"	NUMBER		NOT NULL,
	"P_DL_REQ"	VARCHAR2(500)		NULL,
	"P_DL_FEE"	NUMBER		NULL,
	"P_REVIEW_ST"	CHAR(1)	DEFAULT 'N'	NOT NULL,
	"MEMBER_NO"	NUMBER		NOT NULL,
	"DELIVERY_CD"	NUMBER		NOT NULL,
	"CART_NO"	NUMBER		NOT NULL
);

COMMENT ON COLUMN "PRODUCT_ORDER"."P_ORDER_CD" IS '주문코드';

COMMENT ON COLUMN "PRODUCT_ORDER"."P_ORDER_DT" IS '주문 일자';

COMMENT ON COLUMN "PRODUCT_ORDER"."P_ORDER_NM" IS '수령인 이름';

COMMENT ON COLUMN "PRODUCT_ORDER"."P_ORDER_PHONE" IS '수령인 전화번호';

COMMENT ON COLUMN "PRODUCT_ORDER"."P_ORDER_ADDR" IS '수령인 주소';

COMMENT ON COLUMN "PRODUCT_ORDER"."TOTAL_PRICE" IS '총가격';

COMMENT ON COLUMN "PRODUCT_ORDER"."P_DL_REQ" IS '배송요청사항';

COMMENT ON COLUMN "PRODUCT_ORDER"."P_DL_FEE" IS '배송비';

COMMENT ON COLUMN "PRODUCT_ORDER"."P_REVIEW_ST" IS '리뷰 상태(Y/N)';

COMMENT ON COLUMN "PRODUCT_ORDER"."MEMBER_NO" IS '회원번호';

COMMENT ON COLUMN "PRODUCT_ORDER"."DELIVERY_CD" IS '배송코드';

COMMENT ON COLUMN "PRODUCT_ORDER"."CART_NO" IS '장바구니 번호';

DROP TABLE "P_MESSAGE";

CREATE TABLE "P_MESSAGE" (
	"P_MESSAGE_NO"	NUMBER		NOT NULL,
	"P_M_CONTENT"	VARCHAR2(600)		NOT NULL,
	"P_LIST_NO"	NUMBER		NOT NULL,
	"S_ORDER_CD"	VARCHAR2(20)		NOT NULL
);

COMMENT ON COLUMN "P_MESSAGE"."P_MESSAGE_NO" IS '상품 알림 번호';

COMMENT ON COLUMN "P_MESSAGE"."P_M_CONTENT" IS '상품 알림 내용';

COMMENT ON COLUMN "P_MESSAGE"."P_LIST_NO" IS '상품 리스트 번호';

COMMENT ON COLUMN "P_MESSAGE"."S_ORDER_CD" IS '구독 상품 주문 코드';

DROP TABLE "WEEKLY_LIST";

CREATE TABLE "WEEKLY_LIST" (
	"P_LIST_NO"	NUMBER		NOT NULL,
	"UPLOAD_ST"	CHAR(1)	DEFAULT 'N'	NOT NULL,
	"EX_UPLOAD_DATE"	CHAR(1)		NOT NULL,
	"DELIVERY_DATE"	DATE		NOT NULL
);

COMMENT ON COLUMN "WEEKLY_LIST"."P_LIST_NO" IS '상품 리스트 번호';

COMMENT ON COLUMN "WEEKLY_LIST"."UPLOAD_ST" IS '게시 상태(Y/N)';

COMMENT ON COLUMN "WEEKLY_LIST"."EX_UPLOAD_DATE" IS '게시 예정일(E/T/N/A)';

COMMENT ON COLUMN "WEEKLY_LIST"."DELIVERY_DATE" IS '배송 예정일';

DROP TABLE "FARM";

CREATE TABLE "FARM" (
	"FARM_NO"	NUMBER		NOT NULL,
	"FARM_NM"	VARCHAR2(100)		NOT NULL,
	"PRODUCER"	VARCHAR2(30)		NOT NULL,
	"ORIGIN"	VARCHAR2(100)		NOT NULL
);

COMMENT ON COLUMN "FARM"."FARM_NO" IS '농장 번호';

COMMENT ON COLUMN "FARM"."FARM_NM" IS '농장 이름';

COMMENT ON COLUMN "FARM"."PRODUCER" IS '생산자';

COMMENT ON COLUMN "FARM"."ORIGIN" IS '원산지';

DROP TABLE "OPTION_TYPE";

CREATE TABLE "OPTION_TYPE" (
	"OPTION_CD"	NUMBER		NOT NULL,
	"P_CD"	NUMBER		NOT NULL,
	"OPTION_NM"	VARCHAR2(30)		NOT NULL,
	"OPTION_PRICE"	NUMBER		NOT NULL
);

COMMENT ON COLUMN "OPTION_TYPE"."OPTION_CD" IS '옵션 코드';

COMMENT ON COLUMN "OPTION_TYPE"."P_CD" IS '상품 코드';

COMMENT ON COLUMN "OPTION_TYPE"."OPTION_NM" IS '옵션명';

COMMENT ON COLUMN "OPTION_TYPE"."OPTION_PRICE" IS '옵션 가격';

DROP TABLE "WEEKLY_P";

CREATE TABLE "WEEKLY_P" (
	"PRODUCT_NO"	NUMBER		NOT NULL,
	"P_LIST_NO"	NUMBER		NOT NULL,
	"P_CD"	NUMBER		NOT NULL
);

COMMENT ON COLUMN "WEEKLY_P"."PRODUCT_NO" IS '상품 번호';

COMMENT ON COLUMN "WEEKLY_P"."P_LIST_NO" IS '상품 리스트 번호';

COMMENT ON COLUMN "WEEKLY_P"."P_CD" IS '상품 코드';

DROP TABLE "PRODUCT_IMG";

CREATE TABLE "PRODUCT_IMG" (
	"PRODUCT_IMG"	NUMBER		NOT NULL,
	"P_CD"	NUMBER		NOT NULL,
	"IMG_RENAME"	VARCHAR2(100)		NOT NULL,
	"IMG_ROOT"	VARCHAR2(200)		NOT NULL,
	"IMG_LEVEL"	NUMBER		NOT NULL
);

COMMENT ON COLUMN "PRODUCT_IMG"."PRODUCT_IMG" IS '상품 이미지 번호';

COMMENT ON COLUMN "PRODUCT_IMG"."P_CD" IS '상품 코드';

COMMENT ON COLUMN "PRODUCT_IMG"."IMG_RENAME" IS '이미지 수정명';

COMMENT ON COLUMN "PRODUCT_IMG"."IMG_ROOT" IS '이미지 루트';

COMMENT ON COLUMN "PRODUCT_IMG"."IMG_LEVEL" IS '이미지 레벨';

DROP TABLE "PRODUCT_DELIVERY";

CREATE TABLE "PRODUCT_DELIVERY" (
	"DELIVERY_CD"	NUMBER		NOT NULL,
	"DELIVERY_ST"	VARCHAR2(10)		NOT NULL
);

COMMENT ON COLUMN "PRODUCT_DELIVERY"."DELIVERY_CD" IS '배송코드';

COMMENT ON COLUMN "PRODUCT_DELIVERY"."DELIVERY_ST" IS '배송상태';

DROP TABLE "REVIEW_IMG";

CREATE TABLE "REVIEW_IMG" (
	"REVIEW_IMG_NO"	NUMBER		NOT NULL,
	"REVIEW_IMG_ORIGINAL"	VARCHAR2(200)		NOT NULL,
	"REVIEW_IMG_LEVEL"	NUMBER		NOT NULL,
	"REVIEW_NO"	NUMBER		NOT NULL
);

COMMENT ON COLUMN "REVIEW_IMG"."REVIEW_IMG_NO" IS '이미지 번호';

COMMENT ON COLUMN "REVIEW_IMG"."REVIEW_IMG_ORIGINAL" IS '이미지 원본명';

COMMENT ON COLUMN "REVIEW_IMG"."REVIEW_IMG_LEVEL" IS '이미지 레벨';

COMMENT ON COLUMN "REVIEW_IMG"."REVIEW_NO" IS '게시글 번호';

DROP TABLE "PRODUCT_PAY";

CREATE TABLE "PRODUCT_PAY" (
	"P_PAY_NO"	NUMBER		NOT NULL,
	"P_PAY_DT"	DATE	DEFAULT SYSDATE	NOT NULL,
	"P_PAY_AMOUNT"	NUMBER		NOT NULL,
	"MEMBER_NO"	NUMBER		NOT NULL,
	"P_ORDER_CD"	VARCHAR2(20)		NOT NULL
);

COMMENT ON COLUMN "PRODUCT_PAY"."P_PAY_NO" IS '결제 번호(PK)';

COMMENT ON COLUMN "PRODUCT_PAY"."P_PAY_DT" IS '결제일';

COMMENT ON COLUMN "PRODUCT_PAY"."P_PAY_AMOUNT" IS '결제 금액';

COMMENT ON COLUMN "PRODUCT_PAY"."MEMBER_NO" IS '회원번호';

COMMENT ON COLUMN "PRODUCT_PAY"."P_ORDER_CD" IS '주문코드';

DROP TABLE "SUBS_PAY";

CREATE TABLE "SUBS_PAY" (
	"S_PAY_NO"	NUMBER		NOT NULL,
	"S_PAY_DT"	DATE	DEFAULT SYSDATE	NOT NULL,
	"S_PAY_AMOUNT"	NUMBER		NOT NULL,
	"MEMBER_NO"	NUMBER		NOT NULL,
	"S_ORDER_CD"	VARCHAR2(20)		NOT NULL
);

COMMENT ON COLUMN "SUBS_PAY"."S_PAY_NO" IS '구독 결제 번호';

COMMENT ON COLUMN "SUBS_PAY"."S_PAY_DT" IS '구독 결제일';

COMMENT ON COLUMN "SUBS_PAY"."S_PAY_AMOUNT" IS '구독 결제금액';

COMMENT ON COLUMN "SUBS_PAY"."MEMBER_NO" IS '회원 번호';

COMMENT ON COLUMN "SUBS_PAY"."S_ORDER_CD" IS '구독 상품 주문 코드';

DROP TABLE "SUBS_ORDER";

CREATE TABLE "SUBS_ORDER" (
	"S_ORDER_CD"	VARCHAR2(20)		NOT NULL,
	"S_CANCEL"	CHAR(1)	DEFAULT 'N'	NOT NULL,
	"S_DT"	DATE	DEFAULT SYSDATE	NOT NULL,
	"S_ORDER_NM"	VARCHAR2(30)		NOT NULL,
	"S_ORDER_PHONE"	VARCHAR2(20)		NOT NULL,
	"S_ORDER_ADDR"	VARCHAR2(500)		NOT NULL,
	"S_DL_REQ"	VARCHAR2(500)		NULL,
	"FIRST_DL_DT"	DATE		NOT NULL,
	"S_REVIEW_ST"	CHAR(1)	DEFAULT 'N'	NOT NULL,
	"S_CYCLE"	NUMBER		NOT NULL,
	"MEMBER_NO"	NUMBER		NOT NULL,
	"S_CD"	NUMBER		NOT NULL
);

COMMENT ON COLUMN "SUBS_ORDER"."S_ORDER_CD" IS '구독 상품 주문 코드';

COMMENT ON COLUMN "SUBS_ORDER"."S_CANCEL" IS '구독 해지 여부(Y/N)';

COMMENT ON COLUMN "SUBS_ORDER"."S_DT" IS '구독 일자';

COMMENT ON COLUMN "SUBS_ORDER"."S_ORDER_NM" IS '구독 수령인 이름';

COMMENT ON COLUMN "SUBS_ORDER"."S_ORDER_PHONE" IS '구독 수령인 전화번호';

COMMENT ON COLUMN "SUBS_ORDER"."S_ORDER_ADDR" IS '구독 수령인 주소';

COMMENT ON COLUMN "SUBS_ORDER"."S_DL_REQ" IS '구독 배송 요청사항';

COMMENT ON COLUMN "SUBS_ORDER"."FIRST_DL_DT" IS '구독 첫 배송일';

COMMENT ON COLUMN "SUBS_ORDER"."S_REVIEW_ST" IS '구독 리뷰 상태(Y/N)';

COMMENT ON COLUMN "SUBS_ORDER"."S_CYCLE" IS '구독 배송 주기';

COMMENT ON COLUMN "SUBS_ORDER"."MEMBER_NO" IS '구독 회원 번호';

COMMENT ON COLUMN "SUBS_ORDER"."S_CD" IS '구독 상품 코드';

DROP TABLE "FAQ_BOARD";

CREATE TABLE "FAQ_BOARD" (
	"FAQ_CD"	NUMBER		NOT NULL,
	"FAQ_TITLE"	VARCHAR2(400)		NOT NULL,
	"FAQ_CONTENT"	VARCHAR2(4000)		NOT NULL,
	"ADMIN_NO"	NUMBER		NOT NULL,
	"FAQ_CATEGORY_NO"	NUMBER		NOT NULL
);

COMMENT ON COLUMN "FAQ_BOARD"."FAQ_CD" IS 'FAQ 글 번호';

COMMENT ON COLUMN "FAQ_BOARD"."FAQ_TITLE" IS 'FAQ 제목';

COMMENT ON COLUMN "FAQ_BOARD"."FAQ_CONTENT" IS 'FAQ 내용';

COMMENT ON COLUMN "FAQ_BOARD"."ADMIN_NO" IS '관리자 번호';

COMMENT ON COLUMN "FAQ_BOARD"."FAQ_CATEGORY_NO" IS 'FAQ 카테고리 번호';

DROP TABLE "FAQ_CATEGORY";

CREATE TABLE "FAQ_CATEGORY" (
	"FAQ_CATEGORY_NO"	NUMBER		NOT NULL,
	"FAQ_CATEGORY_NM"	VARCHAR2(50)		NOT NULL
);

COMMENT ON COLUMN "FAQ_CATEGORY"."FAQ_CATEGORY_NO" IS 'FAQ 카테고리 번호';

COMMENT ON COLUMN "FAQ_CATEGORY"."FAQ_CATEGORY_NM" IS 'FAQ 카테고리명';

DROP TABLE "SUBS_DELIVERY";

CREATE TABLE "SUBS_DELIVERY" (
	"S_DELIVERY_CD"	NUMBER		NOT NULL,
	"S_DELIVERY_DT"	DATE		NOT NULL,
	"DELIVERY_CD"	NUMBER		NOT NULL,
	"S_ORDER_CD"	VARCHAR2(20)		NOT NULL
);

COMMENT ON COLUMN "SUBS_DELIVERY"."S_DELIVERY_CD" IS '구독 배송 코드';

COMMENT ON COLUMN "SUBS_DELIVERY"."S_DELIVERY_DT" IS '배송일자';

COMMENT ON COLUMN "SUBS_DELIVERY"."DELIVERY_CD" IS '배송코드';

COMMENT ON COLUMN "SUBS_DELIVERY"."S_ORDER_CD" IS '구독 상품 주문 코드';

DROP TABLE "MEMBER";

CREATE TABLE "MEMBER" (
	"MEMBER_NO"	NUMBER		NOT NULL,
	"MEMBER_NAME"	VARCHAR2(20)		NOT NULL,
	"MEMBER_EMAIL"	VARCHAR2(50)		NOT NULL,
	"MEMBER_ST"	CHAR(1)	DEFAULT 'N'	NOT NULL,
	"SECESSION_CNT"	VARCHAR2(100)		NULL
);

COMMENT ON COLUMN "MEMBER"."MEMBER_NO" IS '회원 번호';

COMMENT ON COLUMN "MEMBER"."MEMBER_NAME" IS '회원 이름';

COMMENT ON COLUMN "MEMBER"."MEMBER_EMAIL" IS '회원 이메일';

COMMENT ON COLUMN "MEMBER"."MEMBER_ST" IS '회원 상태(Y/N/P)';

COMMENT ON COLUMN "MEMBER"."SECESSION_CNT" IS '회원 탈퇴 사유 내용';

DROP TABLE "OPTION_TB";

CREATE TABLE "OPTION_TB" (
	"OPTION_NO"	NUMBER		NOT NULL,
	"OPTION_CD"	NUMBER		NOT NULL,
	"P_ORDER_CD"	VARCHAR2(20)		NOT NULL,
	"OPTION_COUNT"	NUMBER	DEFAULT 1	NOT NULL
);

COMMENT ON COLUMN "OPTION_TB"."OPTION_NO" IS '옵션 번호';

COMMENT ON COLUMN "OPTION_TB"."OPTION_CD" IS '옵션 코드';

COMMENT ON COLUMN "OPTION_TB"."P_ORDER_CD" IS '주문코드';

COMMENT ON COLUMN "OPTION_TB"."OPTION_COUNT" IS '옵션 개수';

DROP TABLE "SUBS";

CREATE TABLE "SUBS" (
	"S_CD"	NUMBER		NOT NULL,
	"S_NM"	VARCHAR2(50)		NOT NULL,
	"S_PRICE"	NUMBER		NOT NULL
);

COMMENT ON COLUMN "SUBS"."S_CD" IS '구독 상품 코드';

COMMENT ON COLUMN "SUBS"."S_NM" IS '구독 상품명';

COMMENT ON COLUMN "SUBS"."S_PRICE" IS '구독 상품 가격';

DROP TABLE "SUBS_EXCEPTION";

CREATE TABLE "SUBS_EXCEPTION" (
	"P_CD"	NUMBER		NOT NULL,
	"S_ORDER_CD"	VARCHAR2(20)		NOT NULL
);

COMMENT ON COLUMN "SUBS_EXCEPTION"."P_CD" IS '상품 코드';

COMMENT ON COLUMN "SUBS_EXCEPTION"."S_ORDER_CD" IS '구독 상품 주문 코드';

DROP TABLE "PRODUCT_REFUND";

CREATE TABLE "PRODUCT_REFUND" (
	"P_REFUND_CD"	NUMBER		NOT NULL,
	"P_REFUND_DT"	DATE	DEFAULT SYSDATE	NOT NULL,
	"P_REFUND_AMOUNT"	NUMBER		NOT NULL,
	"P_REFUND_ST"	CHAR(1)	DEFAULT 'N'	NOT NULL,
	"P_ORDER_CD"	VARCHAR2(20)		NOT NULL
);

COMMENT ON COLUMN "PRODUCT_REFUND"."P_REFUND_CD" IS '환불 코드';

COMMENT ON COLUMN "PRODUCT_REFUND"."P_REFUND_DT" IS '환불 날짜';

COMMENT ON COLUMN "PRODUCT_REFUND"."P_REFUND_AMOUNT" IS '환불 금액';

COMMENT ON COLUMN "PRODUCT_REFUND"."P_REFUND_ST" IS '환불 처리 상태(Y/N)';

COMMENT ON COLUMN "PRODUCT_REFUND"."P_ORDER_CD" IS '주문코드';

ALTER TABLE "REVIEW" ADD CONSTRAINT "PK_REVIEW" PRIMARY KEY (
	"REVIEW_NO"
);

ALTER TABLE "PRODUCT" ADD CONSTRAINT "PK_PRODUCT" PRIMARY KEY (
	"P_CD"
);

ALTER TABLE "ADMIN" ADD CONSTRAINT "PK_ADMIN" PRIMARY KEY (
	"ADMIN_NO"
);

ALTER TABLE "CART" ADD CONSTRAINT "PK_CART" PRIMARY KEY (
	"CART_NO"
);

ALTER TABLE "P_CATEGORY" ADD CONSTRAINT "PK_P_CATEGORY" PRIMARY KEY (
	"P_CATEGORY_NO"
);

ALTER TABLE "PRODUCT_ORDER" ADD CONSTRAINT "PK_PRODUCT_ORDER" PRIMARY KEY (
	"P_ORDER_CD"
);

ALTER TABLE "P_MESSAGE" ADD CONSTRAINT "PK_P_MESSAGE" PRIMARY KEY (
	"P_MESSAGE_NO"
);

ALTER TABLE "WEEKLY_LIST" ADD CONSTRAINT "PK_WEEKLY_LIST" PRIMARY KEY (
	"P_LIST_NO"
);

ALTER TABLE "FARM" ADD CONSTRAINT "PK_FARM" PRIMARY KEY (
	"FARM_NO"
);

ALTER TABLE "OPTION_TYPE" ADD CONSTRAINT "PK_OPTION_TYPE" PRIMARY KEY (
	"OPTION_CD"
);

ALTER TABLE "WEEKLY_P" ADD CONSTRAINT "PK_WEEKLY_P" PRIMARY KEY (
	"PRODUCT_NO"
);

ALTER TABLE "PRODUCT_IMG" ADD CONSTRAINT "PK_PRODUCT_IMG" PRIMARY KEY (
	"PRODUCT_IMG"
);

ALTER TABLE "PRODUCT_DELIVERY" ADD CONSTRAINT "PK_PRODUCT_DELIVERY" PRIMARY KEY (
	"DELIVERY_CD"
);

ALTER TABLE "REVIEW_IMG" ADD CONSTRAINT "PK_REVIEW_IMG" PRIMARY KEY (
	"REVIEW_IMG_NO"
);

ALTER TABLE "PRODUCT_PAY" ADD CONSTRAINT "PK_PRODUCT_PAY" PRIMARY KEY (
	"P_PAY_NO"
);

ALTER TABLE "SUBS_PAY" ADD CONSTRAINT "PK_SUBS_PAY" PRIMARY KEY (
	"S_PAY_NO"
);

ALTER TABLE "SUBS_ORDER" ADD CONSTRAINT "PK_SUBS_ORDER" PRIMARY KEY (
	"S_ORDER_CD"
);

ALTER TABLE "FAQ_BOARD" ADD CONSTRAINT "PK_FAQ_BOARD" PRIMARY KEY (
	"FAQ_CD"
);

ALTER TABLE "FAQ_CATEGORY" ADD CONSTRAINT "PK_FAQ_CATEGORY" PRIMARY KEY (
	"FAQ_CATEGORY_NO"
);

ALTER TABLE "SUBS_DELIVERY" ADD CONSTRAINT "PK_SUBS_DELIVERY" PRIMARY KEY (
	"S_DELIVERY_CD"
);

ALTER TABLE "MEMBER" ADD CONSTRAINT "PK_MEMBER" PRIMARY KEY (
	"MEMBER_NO"
);

ALTER TABLE "OPTION_TB" ADD CONSTRAINT "PK_OPTION_TB" PRIMARY KEY (
	"OPTION_NO"
);

ALTER TABLE "SUBS" ADD CONSTRAINT "PK_SUBS" PRIMARY KEY (
	"S_CD"
);

ALTER TABLE "PRODUCT_REFUND" ADD CONSTRAINT "PK_PRODUCT_REFUND" PRIMARY KEY (
	"P_REFUND_CD"
);

CREATE SEQUENCE SEQ_REVIEW_NO;
CREATE SEQUENCE SEQ_P_CD;
CREATE SEQUENCE SEQ_ADMIN_NO;
CREATE SEQUENCE SEQ_CART_NO;
CREATE SEQUENCE SEQ_P_CATEGORY_NO;
CREATE SEQUENCE SEQ_P_ORDER_CD;
CREATE SEQUENCE SEQ_P_MESSAGE_NO;
CREATE SEQUENCE SEQ_P_LIST_NO;
CREATE SEQUENCE SEQ_FARM_NO;
CREATE SEQUENCE SEQ_OPTION_CD;
CREATE SEQUENCE SEQ_PRODUCT_NO;
CREATE SEQUENCE SEQ_PRODUCT_IMG;
CREATE SEQUENCE SEQ_DELIVERY_CD;
CREATE SEQUENCE SEQ_REVIEW_IMG_NO;
CREATE SEQUENCE SEQ_P_PAY_NO;
CREATE SEQUENCE SEQ_S_PAY_NO;
CREATE SEQUENCE SEQ_S_ORDER_CD;
CREATE SEQUENCE SEQ_FAQ_CD;
CREATE SEQUENCE SEQ_FAQ_CATEGORY_NO;
CREATE SEQUENCE SEQ_S_DELIVERY_CD;
CREATE SEQUENCE SEQ_MEMBER_NO;
CREATE SEQUENCE SEQ_OPTION_NO;
CREATE SEQUENCE SEQ_S_NO;
CREATE SEQUENCE SEQ_P_REFUND_CD;


-- 상품, 옵션, FARM, 별점, 상품이미지, 리뷰 테이블 필요 


INSERT INTO P_CATEGORY
VALUES(SEQ_P_CATEGORY_NO.NEXTVAL, '과일류');

INSERT INTO PRODUCT
VALUES(SEQ_P_CD.NEXTVAL, 1, 1, '못난이바나나' , 15000, DEFAULT, '못난이 바나나 아주 맛나요~' , DEFAULT, SYSDATE);

INSERT INTO FARM
VALUES(SEQ_FARM_NO.NEXTVAL, '다영이네', '다영' , '제주도');

INSERT INTO OPTION_TYPE
VALUES(SEQ_OPTION_CD.NEXTVAL, 23, '1.5kg', 3000);

INSERT INTO OPTION_TYPE
VALUES(SEQ_OPTION_CD.NEXTVAL, 23, '3kg', 6000)


SELECT P_CD, PRODUCT_NM, PRODUCT_PRICE, PRODUCT_INFO,
OPTION_NM, OPTION_PRICE /* PRODUCER, ORIGIN */
FROM PRODUCT
JOIN OPTION_TYPE USING(P_CD)
/* JOIN FARM USING(FARM_NO) */
WHERE P_CD = 4;

SELECT * FROM FARM;
SELECT * FROM PRODUCT;
SELECT * FROM P_CATEGORY;

INSERT INTO P_CATEGORY
VALUES(SEQ_P_CATEGORY_NO.NEXTVAL, '과일류');

INSERT INTO PRODUCT
VALUES(SEQ_P_CD.NEXTVAL, 21, 21, '못난이참외' , 20000, DEFAULT, '못난이 참외 아주 맛나요~' , DEFAULT, SYSDATE);

SELECT P_CD, PRODUCT_NM, PRODUCT_PRICE, PRODUCT_INFO, 
PRODUCER, ORIGIN, STAR_RATING
FROM PRODUCT
JOIN FARM USING(FARM_NO)
JOIN REVIEW USING(P_CD)
WHERE P_CD = 23

SELECT P_CD, PRODUCT_NM, PRODUCT_PRICE, PRODUCT_INFO, P_CATEGORY_NO, PRODUCER, ORIGIN
FROM PRODUCT
JOIN FARM USING(FARM_NO)
WHERE P_CD = 23;

UNION

SELECT PRODUCER, ORIGIN
FROM FARM;

SELECT OPTION_CD, OPTION_NM, OPTION_PRICE
FROM OPTION_TYPE
WHERE P_CD = 23;

SELECT *
FROM OPTION_TYPE

CREATE TABLE "REVIEW_TYPE" (
	"REVIEW_CD"	NUMBER		NOT NULL
);

COMMENT ON COLUMN "REVIEW_TYPE"."REVIEW_CD" IS '리뷰 구분 코드';

ALTER TABLE REVIEW
ADD REVIEW_CD NUMBER NOT NULL;

ALTER TABLE OPTION_TB DROP COLUMN P_ORDER_CD;

INSERT INTO OPTION_TB
VALUES(SEQ_OPTION_NO.NEXTVAL, 21, DEFAULT);

SELECT * FROM OPTION_TB;


SELECT OPTION_NM, OPTION_PRICE, OPTION_COUNT
FROM OPTION_TYPE
JOIN OPTION_TB USING(OPTION_CD)
WHERE OPTION_CD = 21;

-- FARM SEQUENCE(1)
CREATE SEQUENCE SEQ_FARM_NO NOCACHE;

-- FARM SAMPLE DATA
INSERT INTO FARM VALUES(
    SEQ_FARM_NO.NEXTVAL, '당근 농장', '바니바니', '뿌리채소 마을'
);

INSERT INTO FARM VALUES(
    SEQ_FARM_NO.NEXTVAL, '감자 농장', '감사합니다', '뿌리채소 마을'
);

INSERT INTO FARM VALUES(
    SEQ_FARM_NO.NEXTVAL, '토마토 농장', '멋쟁이', '열매채소 마을'
);

-- P_CATEGORY SEQUENCE(1)
CREATE SEQUENCE SEQ_P_CATEGORY_NO NOCACHE;

-- CATEGORY SAMPLE DATA;
INSERT INTO P_CATEGORY VALUES(
    SEQ_P_CATEGORY_NO.NEXTVAL, '근채류'
);
INSERT INTO P_CATEGORY VALUES(
    SEQ_P_CATEGORY_NO.NEXTVAL, '곡식류/견과류'
);
INSERT INTO P_CATEGORY VALUES(
    SEQ_P_CATEGORY_NO.NEXTVAL, '채소류'
);
INSERT INTO P_CATEGORY VALUES(
    SEQ_P_CATEGORY_NO.NEXTVAL, '과채류'
);
INSERT INTO P_CATEGORY VALUES(
    SEQ_P_CATEGORY_NO.NEXTVAL, '나물류'
);
INSERT INTO P_CATEGORY VALUES(
    SEQ_P_CATEGORY_NO.NEXTVAL, '버섯류'
);
INSERT INTO P_CATEGORY VALUES(
    SEQ_P_CATEGORY_NO.NEXTVAL, '과일류'
);

SELECT * FROM MEMBER;

ALTER TABLE PRODUCT_IMG
RENAME COLUMN PRODUCT_IMG TO P_IMG_NO;

ALTER SESSION SET NLS_DATE_FORMAT = 'YYYY/MM/DD HH24:MI:SS';
SELECT SYSDATE FROM DUAL;

-- 개별상품 주문번호
SELECT CONCAT(TO_CHAR(SYSDATE, 'YYYYMMDD-"00"'), SEQ_P_ORDER_CD.NEXTVAL) FROM DUAL;


-- 상품 목록에서 바로 결제페이지로 이동 했을 경우 - 주문 정보 입력
INSERT INTO PRODUCT_ORDER (P_ORDER_CD, P_ORDER_DT, P_ORDER_NM, P_ORDER_PHONE, P_ORDER_ADDR, TOTAL_PRICE, P_DL_REQ, P_REVIEW_ST, MEMBER_NO, DELIVERY_CD) 
	VALUES (
			CONCAT(TO_CHAR(SYSDATE, 'YYYYMMDD-"00"'), SEQ_P_ORDER_CD.NEXTVAL) AS DY ,
			DEFAULT, 
			'전다영', 
			'01012341234', 
			'서울 특별시 금천구 가산디지털1로 186', 
			'500000', 
			'집가고싶다', 
			DEFAULT, 
			2, 
			1);
			
			
			
			-- ADMIN_PW#{productOrderName}, #{productOrderPhone}, #{productOrderAddr}, #{productDelReq}, #{totalPrice}


   SELECT * FROM MEMBER; -- 내 회원번호 2번임
   SELECT * FROM PRODUCT_DELIVERY;


INSERT INTO PRODUCT_DELIVERY VALUES(1, '배송 전');
INSERT INTO PRODUCT_DELIVERY VALUES(2, '배송 중');
INSERT INTO PRODUCT_DELIVERY VALUES(3, '배송 완');

SELECT * FROM PRODUCT_ORDER;


ALTER TABLE PRODUCT_ORDER
DROP COLUMN CART_NO;

ALTER TABLE PRODUCT_ORDER
DROP COLUMN _DL_FEE;