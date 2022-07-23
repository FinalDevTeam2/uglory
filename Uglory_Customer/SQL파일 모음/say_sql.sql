CREATE TABLE "REVIEW" (
	"REVIEW_NO"	NUMBER		NOT NULL,
	"REVIEW_CONTENT"	VARCHAR2(4000)		NOT NULL,
	"REVIEW_ENROLL_DT"	DATE		NOT NULL,
	"STAR_RATING"	NUMBER		NOT NULL,
	"MEMBER_NO"	NUMBER		NOT NULL,
	"P_CD"	NUMBER		NULL,
	"P_ORDER_CD"	VARCHAR2(20)		NULL,
	"S_ORDER_CD"	VARCHAR2(20)		NULL,
	"REVIEW_CD"	NUMBER		NOT NULL
);

COMMENT ON COLUMN "REVIEW"."REVIEW_NO" IS '게시글 번호';

COMMENT ON COLUMN "REVIEW"."REVIEW_CONTENT" IS '리뷰 내용';

COMMENT ON COLUMN "REVIEW"."REVIEW_ENROLL_DT" IS '작성일';

COMMENT ON COLUMN "REVIEW"."STAR_RATING" IS '별점';

COMMENT ON COLUMN "REVIEW"."MEMBER_NO" IS '회원 번호';

COMMENT ON COLUMN "REVIEW"."P_CD" IS '상품 코드';

COMMENT ON COLUMN "REVIEW"."P_ORDER_CD" IS '주문코드';

COMMENT ON COLUMN "REVIEW"."S_ORDER_CD" IS '구독 상품 주문 코드';

COMMENT ON COLUMN "REVIEW"."REVIEW_CD" IS '리뷰 구분 코드';

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

CREATE TABLE "CART" (
	"CART_NO"	NUMBER		NOT NULL,
	"MEMBER_NO"	NUMBER		NOT NULL,
	"OPTION_NO"	NUMBER		NOT NULL
);

COMMENT ON COLUMN "CART"."CART_NO" IS '장바구니 번호';

COMMENT ON COLUMN "CART"."MEMBER_NO" IS '장바구니 이용 회원';

COMMENT ON COLUMN "CART"."OPTION_NO" IS '옵션 번호';

CREATE TABLE "P_CATEGORY" (
	"P_CATEGORY_NO"	NUMBER		NOT NULL,
	"P_CATEGORY_NM"	VARCHAR2(20)		NOT NULL
);

COMMENT ON COLUMN "P_CATEGORY"."P_CATEGORY_NO" IS '카테고리 번호';

COMMENT ON COLUMN "P_CATEGORY"."P_CATEGORY_NM" IS '카테고리명';

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

CREATE TABLE "WEEKLY_P" (
	"PRODUCT_NO"	NUMBER		NOT NULL,
	"P_LIST_NO"	NUMBER		NOT NULL,
	"P_CD"	NUMBER		NOT NULL
);

COMMENT ON COLUMN "WEEKLY_P"."PRODUCT_NO" IS '상품 번호';

COMMENT ON COLUMN "WEEKLY_P"."P_LIST_NO" IS '상품 리스트 번호';

COMMENT ON COLUMN "WEEKLY_P"."P_CD" IS '상품 코드';

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

CREATE TABLE "PRODUCT_DELIVERY" (
	"DELIVERY_CD"	NUMBER		NOT NULL,
	"DELIVERY_ST"	VARCHAR2(10)		NOT NULL
);

COMMENT ON COLUMN "PRODUCT_DELIVERY"."DELIVERY_CD" IS '배송코드';

COMMENT ON COLUMN "PRODUCT_DELIVERY"."DELIVERY_ST" IS '배송상태';

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

CREATE TABLE "FAQ_CATEGORY" (
	"FAQ_CATEGORY_NO"	NUMBER		NOT NULL,
	"FAQ_CATEGORY_NM"	VARCHAR2(50)		NOT NULL
);

COMMENT ON COLUMN "FAQ_CATEGORY"."FAQ_CATEGORY_NO" IS 'FAQ 카테고리 번호';

COMMENT ON COLUMN "FAQ_CATEGORY"."FAQ_CATEGORY_NM" IS 'FAQ 카테고리명';

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

CREATE TABLE "SUBS" (
	"S_CD"	NUMBER		NOT NULL,
	"S_NM"	VARCHAR2(50)		NOT NULL,
	"S_PRICE"	NUMBER		NOT NULL
);

COMMENT ON COLUMN "SUBS"."S_CD" IS '구독 상품 코드';

COMMENT ON COLUMN "SUBS"."S_NM" IS '구독 상품명';

COMMENT ON COLUMN "SUBS"."S_PRICE" IS '구독 상품 가격';

CREATE TABLE "SUBS_EXCEPTION" (
	"P_CD"	NUMBER		NOT NULL,
	"S_ORDER_CD"	VARCHAR2(20)		NOT NULL
);

COMMENT ON COLUMN "SUBS_EXCEPTION"."P_CD" IS '상품 코드';

COMMENT ON COLUMN "SUBS_EXCEPTION"."S_ORDER_CD" IS '구독 상품 주문 코드';

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

CREATE TABLE "REVIEW_TYPE" (
	"REVIEW_CD"	NUMBER		NOT NULL
);

COMMENT ON COLUMN "REVIEW_TYPE"."REVIEW_CD" IS '리뷰 구분 코드';

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

ALTER TABLE "REVIEW_TYPE" ADD CONSTRAINT "PK_REVIEW_TYPE" PRIMARY KEY (
	"REVIEW_CD"
);



ALTER TABLE PRODUCT_IMG
RENAME COLUMN PRODUCT_IMG TO P_IMG_NO;


ALTER TABLE WEEKLY_LIST DROP COLUMN UPLOAD_ST;
ALTER TABLE PRODUCT_PAY MODIFY P_PAY_NO VARCHAR2(20);


ALTER TABLE WEEKLY_P DROP COLUMN P_CD;

ALTER TABLE WEEKLY_P 
ADD (OPTION_CD NUMBER NOT NULL);

ALTER TABLE WEEKLY_P
ADD FOREIGN KEY(OPTION_CD) REFERENCES OPTION_TYPE(OPTION_CD);

COMMENT ON COLUMN WEEKLY_P.OPTION_CD IS '옵션 코드';

ALTER TABLE SUBS_PAY MODIFY S_PAY_NO VARCHAR2(50);



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

-- 주문별 선택 옵션 삭제
ALTER TABLE OPTION_TB DROP COLUMN P_ORDER_CD;

-- 샘플데이터

-- MEMBER SAMPLE DATA 
INSERT INTO MEMBER VALUES(
	SEQ_MEMBER_NO.NEXTVAL, '신아윤', 'test01@naver.com', 'N', NULL
);

INSERT INTO MEMBER VALUES(
	SEQ_MEMBER_NO.NEXTVAL, '전다영', 'test02@naver.com', 'N', NULL
);

INSERT INTO MEMBER VALUES(
	SEQ_MEMBER_NO.NEXTVAL, '곰비', 'test03@naver.com', 'N', NULL
);

INSERT INTO MEMBER VALUES(
	SEQ_MEMBER_NO.NEXTVAL, '김승희', 'test04@naver.com', 'N', NULL
);

INSERT INTO MEMBER VALUES(
	SEQ_MEMBER_NO.NEXTVAL, '백소현', 'test05@naver.com', 'N', NULL
);

INSERT INTO MEMBER VALUES(
	SEQ_MEMBER_NO.NEXTVAL, '진팍', 'test06@naver.com', 'N', NULL
);

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

COMMIT;

-- 구독 상품(SUBS)
INSERT INTO SUBS VALUES('1', '스탠다드', '15500'); 
INSERT INTO SUBS VALUES('2', '점보', '25000');

-- 구독 상품 주문(SUBS_ORDER)
INSERT INTO SUBS_ORDER VALUES(
   SEQ_S_ORDER_CD.NEXTVAL, DEFAULT, DEFAULT, '김민규', 
   '01017171717', '우리집', '빨리조심',
   SYSDATE, 'Y', '2', 1, '1'
);

-- 상품(다른 건 다 소현이거 받아서 넣었고! 리뷰용 자두만 추가햇둠!! P_CD = 9)
INSERT INTO PRODUCT VALUES(9, 7, 2, '자두', '10000', DEFAULT, NULL, SYSDATE, NULL);

-- 옵션 종류 샘플데이터
INSERT INTO OPTION_TYPE VALUES(SEQ_OPTION_CD.NEXTVAL, 1, '1.5kg', 3000);
INSERT INTO OPTION_TYPE VALUES(SEQ_OPTION_CD.NEXTVAL, 1, '3kg', 6000);

INSERT INTO OPTION_TYPE VALUES(SEQ_OPTION_CD.NEXTVAL, 9, '2kg', 4000);

SELECT * FROM OPTION_TYPE;

-- 주문별 선택 옵션 샘플데이터
INSERT INTO OPTION_TB VALUES(SEQ_OPTION_NO.NEXTVAL, 1, DEFAULT, 23);
INSERT INTO OPTION_TB VALUES(SEQ_OPTION_NO.NEXTVAL, 3, DEFAULT, 24);

SELECT * FROM PRODUCT_ORDER;

-- 장바구니 샘플데이터
INSERT INTO CART VALUES(SEQ_CART_NO.NEXTVAL, 1, 1);
INSERT INTO CART VALUES(SEQ_CART_NO.NEXTVAL, 1, 2);
SELECT * FROM CART;

-- 개별 상품 주문 샘플데이터
INSERT INTO PRODUCT_ORDER VALUES(
   SEQ_P_ORDER_CD.NEXTVAL, SYSDATE, '김민규', '01017171717', '우리집', '3000', 
   '빨리!', '3000', DEFAULT, 1, 2, 6);

INSERT INTO PRODUCT_ORDER VALUES(
   SEQ_P_ORDER_CD.NEXTVAL, SYSDATE, '김민규', '01017171717', '우리집', '24000', 
   '빨리!', '3000', 'Y', 1, 2, 5);

-- 배송 상태 샘플데이터
INSERT INTO PRODUCT_DELIVERY VALUES(1, '배송 전');
INSERT INTO PRODUCT_DELIVERY VALUES(2, '배송 중');
INSERT INTO PRODUCT_DELIVERY VALUES(3, '배송 완');

-- 리뷰 게시판 종류 샘플데이터
SELECT * FROM REVIEW_TYPE;
INSERT INTO REVIEW_TYPE VALUES(1);
INSERT INTO REVIEW_TYPE VALUES(2);

-- 리뷰 샘플데이터
INSERT INTO REVIEW VALUES(
   SEQ_REVIEW_NO.NEXTVAL, '세상이 끝나더라도 이 자두를 심겠습니당!', SYSDATE, '5', 1, 
   2, 23, NULL, 2);

INSERT INTO REVIEW VALUES(
   SEQ_REVIEW_NO.NEXTVAL, '스탠다드 박스는 종류나 양이 많지 않네요 아쉽습니다', SYSDATE, '3', 2,
   NULL, NULL, 1, 1);

-- 상품 샘플데이터
INSERT INTO PRODUCT VALUES(SEQ_PRODUCT_NO.NEXTVAL, 1, 1, '감자', '10000', 'I', NULL, SYSDATE, NULL);
INSERT INTO PRODUCT VALUES(SEQ_PRODUCT_NO.NEXTVAL, 1, 1, '당근', '10000', 'I', NULL, SYSDATE, NULL);
INSERT INTO PRODUCT VALUES(SEQ_PRODUCT_NO.NEXTVAL, 1, 1, '고구마', '10000', 'I', NULL, SYSDATE, NULL);
INSERT INTO PRODUCT VALUES(SEQ_PRODUCT_NO.NEXTVAL, 1, 1, '우엉', '10000', 'I', NULL, SYSDATE, NULL);
INSERT INTO PRODUCT VALUES(SEQ_PRODUCT_NO.NEXTVAL, 1, 1, '무', '10000', 'I', NULL, SYSDATE, NULL);
INSERT INTO PRODUCT VALUES(SEQ_PRODUCT_NO.NEXTVAL, 1, 1, '연근', '10000', 'I', NULL, SYSDATE, NULL);
INSERT INTO PRODUCT VALUES(SEQ_PRODUCT_NO.NEXTVAL, 2, 1, '서리태', '10000', 'I', NULL, SYSDATE, NULL);
INSERT INTO PRODUCT VALUES(SEQ_PRODUCT_NO.NEXTVAL, 2, 1, '밤', '10000', 'I', NULL, SYSDATE, NULL);




------------------------------------------------------- 회원 쪽 -------------------------------------------------------

--회원 탈퇴 사유 테이블
CREATE TABLE "SECESSION_CNT" (
   "SECESSION_CD"   NUMBER   NOT NULL,
   "SECESSION_CNT"   VARCHAR2(200)   NOT NULL
   
);

--MEMBER 테이블에 SECESSION_CD 추가
ALTER TABLE MEMBER add (SECESSION_CD NUMBER); 

--제약조건 추가
ALTER TABLE "SECESSION_CNT" ADD CONSTRAINT "PK_SECESSION_CNT" PRIMARY KEY (
   "SECESSION_CD"
);

--컬럼 추가
COMMENT ON COLUMN "SECESSION_CNT"."SECESSION_CD" IS '회원 탈퇴 코드';
COMMENT ON COLUMN "SECESSION_CNT"."SECESSION_CNT" IS '회원 탈퇴 사유 내용';

--사유  샘플테이블 
INSERT INTO SECESSION_CNT VALUES(1, '더 이상 서비스가 필요하지 않아요.');
INSERT INTO SECESSION_CNT VALUES(2, '서비스가 마음에 들지 않아요.');
INSERT INTO SECESSION_CNT VALUES(3, '구독료가 부담스러워요.');
INSERT INTO SECESSION_CNT VALUES(4, '비밀!!');


SELECT * FROM SECESSION_CNT;

ALTER TABLE MEMBER ADD SECESSION_DT DATE ;

------------------------------- 개별 상품 장바구니 테이블 수정 ---------------------------------
-- 개별 상품 주문 테이블에서 장바구니 코드 삭제
ALTER TABLE PRODUCT_ORDER
DROP COLUMN CART_NO;

-- OPTION_TB 에 주문코드(P_ORDER_CD) 추가
ALTER TABLE OPTION_TB
ADD P_ORDER_CD VARCHAR2(20);

-- OPTION_TB 테이블의 P_ORDER_CD 컬럼에 제약조건(NOT NULL) 추가를 위한 데이터 삽입
UPDATE OPTION_TB SET
P_ORDER_CD = 1
WHERE OPTION_NO = 1;

UPDATE OPTION_TB SET
P_ORDER_CD = 2
WHERE OPTION_NO = 2;

-- P_ORDER_CD 컬럼에 NOT NULL, FOREIGN KEY 추가
DROP TABLE OPTION_TB;

SELECT * FROM OPTION_TB;

DELETE FROM OPTION_TB
WHERE OPTION_NO IN (21, 22);

ALTER TABLE OPTION_TB MODIFY P_ORDER_CD NOT NULL;

ALTER TABLE OPTION_TB ADD FOREIGN KEY(P_ORDER_CD) REFERENCES PRODUCT_ORDER(P_ORDER_CD);



-- 장바구니 테이블 삭제
SELECT * FROM CART;
DELETE FROM CART;
DROP TABLE CART;

-- 장바구니 테이블 생성
CREATE TABLE CART(
    MEMBER_NO NUMBER NOT NULL,
    OPTION_NO NUMBER NOT NULL
);

ALTER TABLE CART ADD CONSTRAINT "PK_CART" PRIMARY KEY (
	MEMBER_NO,
	OPTION_NO
);


-- DROP하고 새로 만듬

CREATE TABLE "OPTION_TB" (
   "OPTION_NO"   NUMBER      NOT NULL,
   "OPTION_CD"   NUMBER      NOT NULL,
   "OPTION_COUNT"   NUMBER   DEFAULT 1   NOT NULL,
   "P_ORDER_CD"   VARCHAR2(20)      NOT NULL
);

COMMENT ON COLUMN "OPTION_TB"."OPTION_NO" IS '옵션 번호';

COMMENT ON COLUMN "OPTION_TB"."OPTION_CD" IS '옵션 코드';

COMMENT ON COLUMN "OPTION_TB"."OPTION_COUNT" IS '옵션 개수';

COMMENT ON COLUMN "OPTION_TB"."P_ORDER_CD" IS '주문코드';

ALTER TABLE "OPTION_TB" ADD CONSTRAINT "PK_OPTION_TB" PRIMARY KEY (
   "OPTION_NO"
);

-- 주문별 선택 옵션 샘플데이터
INSERT INTO OPTION_TB VALUES(SEQ_OPTION_NO.NEXTVAL, 1, DEFAULT, 23);
INSERT INTO OPTION_TB VALUES(SEQ_OPTION_NO.NEXTVAL, 3, DEFAULT, 24);

SELECT * FROM PRODUCT_ORDER;
SELECT * FROM OPTION_TB;



------------------------------------------------------- 회원 쪽 -------------------------------------------------------


ALTER TABLE REVIEW MODIFY REVIEW_ENROLL_DT DEFAULT SYSDATE;

INSERT INTO REVIEW
VALUES (SEQ_REVIEW_NO.NEXTVAL, '안녕하세요', SYSDATE, 5, 1, 1, 23, NULL, 2);

SELECT * FROM REVIEW;

--===================================================================

--SQL문

-- 미작성 리뷰 구독
SELECT S_ORDER_CD, S_DT, S_NM, S_PRICE
FROM SUBS_ORDER
JOIN SUBS USING(S_CD)
WHERE S_REVIEW_ST = 'N'
AND SUBS_ORDER.MEMBER_NO = 7
ORDER BY S_ORDER_CD;

SELECT * FROM SUBS_ORDER;

-- 미작성 리뷰 상품
-- SELECT P_ORDER_CD, P_ORDER_DT, PRODUCT_NM, OPTION_NM, TOTAL_PRICE, OPTION_TYPE.P_CD
-- FROM PRODUCT_ORDER
-- JOIN OPTION_TB USING(P_ORDER_CD)
-- JOIN OPTION_TYPE USING(OPTION_CD)
-- JOIN PRODUCT ON(OPTION_TYPE.P_CD = PRODUCT.P_CD)
-- WHERE P_REVIEW_ST = 'N'
-- AND PRODUCT_ORDER.MEMBER_NO = 7;
SELECT DISTINCT P_ORDER_CD, P_CD, PRODUCT_NM, P_ORDER_DT, TOTAL_PRICE
		FROM PRODUCT_ORDER
		JOIN OPTION_TB USING(P_ORDER_CD)
		JOIN OPTION_TYPE USING(OPTION_CD)
		JOIN PRODUCT USING(P_CD)
		WHERE MEMBER_NO = #{memberNo}
		AND (P_ORDER_CD, P_CD) NOT IN (SELECT P_ORDER_CD, P_CD FROM REVIEW
		                                WHERE MEMBER_NO = #{memberNo})

SELECT * FROM REVIEW;


-- ====== 샘플데이터 ========
-- 7번 회원 구독
INSERT INTO SUBS_ORDER VALUES(
   SEQ_S_ORDER_CD.NEXTVAL, DEFAULT, DEFAULT, '신아윤', 
   '01017171717', '우리집', '조심히 와주세요',
   SYSDATE, DEFAULT, '1', 7, '1'
);

INSERT INTO SUBS_ORDER VALUES(
   SEQ_S_ORDER_CD.NEXTVAL, DEFAULT, DEFAULT, '신아윤', 
   '01017171717', '친구집', '택배가 온다!',
   SYSDATE, DEFAULT, '1', 7, '2'
);

INSERT INTO SUBS_ORDER VALUES(
   SEQ_S_ORDER_CD.NEXTVAL, DEFAULT, DEFAULT, '보라돌이', 
   '01017171717', '텔레토비 동산', '조심히',
   SYSDATE, DEFAULT, '2', 7, '1'
);

-- 7번 회원 개별상품 주문
INSERT INTO PRODUCT_ORDER VALUES(
   SEQ_P_ORDER_CD.NEXTVAL, SYSDATE, '신아윤', '01017171717', '우리집', '30000', 
   '빨리!', '3000', DEFAULT, 7, 1);


INSERT INTO OPTION_TB VALUES(SEQ_OPTION_NO.NEXTVAL, 1, DEFAULT, 61);
INSERT INTO OPTION_TB VALUES(SEQ_OPTION_NO.NEXTVAL, 3, DEFAULT, 62);

SELECT * FROM REVIEW;
SELECT * FROM REVIEW_IMG;

-- REVIEW_TYPE 테이블 삭제
DROP TABLE REVIEW_TYPE;

-- REVIEW 컬럼 삭제
ALTER TABLE REVIEW DROP COLUMN REVIEW_CD;

-- 리뷰 구분 테이블에 외래키 삭제
ALTER TABLE REVIEW DROP CONSTRAINT SYS_C0023621;

-- REVIEW 테이블에 리뷰구분코드 추가
ALTER TABLE REVIEW ADD REVIEW_CD NUMBER;


-- 구독 주문 테이블에 리뷰 상태를 'Y'
--UPDATE SUBS_ORDER
--SET S_REVIEW_ST = 'Y'
--WHERE S_ORDER_CD IN 
--	(SELECT DISTINCT SUBS_ORDER.S_ORDER_CD
--		FROM SUBS_ORDER 
--		JOIN REVIEW ON(SUBS_ORDER.S_ORDER_CD = REVIEW.S_ORDER_CD)
--		WHERE SUBS_ORDER.S_ORDER_CD = REVIEW.S_ORDER_CD);

-- 상품 주문 리뷰 상태 'Y'
--UPDATE PRODUCT_ORDER
--SET P_REVIEW_ST = 'Y'
--WHERE P_ORDER_CD IN
--	(SELECT DISTINCT PRODUCT_ORDER.P_ORDER_CD
--		FROM PRODUCT_ORDER
--		JOIN REVIEW ON(PRODUCT_ORDER.P_ORDER_CD = REVIEW.P_ORDER_CD)
--		WHERE PRODUCT_ORDER.P_ORDER_CD = REVIEW.P_ORDER_CD);


-- 리뷰 구독 정보 불러오는 
SELECT S_DT, S_NM, S_PRICE FROM SUBS_ORDER
LEFT JOIN REVIEW USING(S_ORDER_CD)
JOIN SUBS USING(S_CD)
WHERE SUBS_ORDER.MEMBER_NO = 7;
SELECT REVIEW_CD FROM REVIEW
WHERE MEMBER_NO = 7;


-- 리뷰 상품 정보 불러오는
SELECT P_ORDER_CD, PRODUCT_NM, P_ORDER_DT, TOTAL_PRICE
		FROM PRODUCT_ORDER
		JOIN MEMBER USING(MEMBER_NO)
		JOIN OPTION_TB USING(P_ORDER_CD)
		JOIN OPTION_TYPE USING(OPTION_CD)
		JOIN PRODUCT ON(OPTION_TYPE.P_CD = PRODUCT.P_CD)
		WHERE MEMBER_NO = #{memberNo}
		AND PRODUCT.P_CD = #{productCode}
		AND ROWNUM = 1

SELECT * FROM REVIEW;


-- ========= 리뷰 테이블 수정 ===============
-- 리뷰 테이블 작성일 default 수정
ALTER TABLE REVIEW MODIFY (REVIEW_ENROLL_DT DEFAULT SYSDATE);

-- 리뷰 이미지 테이블에서 REVIEW_IMG_ORIGINAL -> REVIEW_IMG_RENAME
ALTER TABLE REVIEW_IMG RENAME COLUMN REVIEW_IMG_ORIGINAL TO REVIEW_IMG_RENAME;

-- ========== 리뷰 샘플 데이터 삽입 =================
-- 구독
INSERT INTO REVIEW
	VALUES( SEQ_REVIEW_NO.NEXTVAL, '정기구독 조항요',
			SYSDATE, 8, 7, NULL, NULL, 62, 1
)

-- 상품
INSERT INTO REVIEW 
      VALUES( SEQ_REVIEW_NO.NEXTVAL,'맛있어요!',
              SYSDATE, 5, 7, 8, '1', NULL, 2
      );
INSERT INTO REVIEW 
      VALUES( SEQ_REVIEW_NO.NEXTVAL,'신선해요!',
              SYSDATE, 8, 7, 3, '2', NULL, 2
      );
INSERT INTO REVIEW 
      VALUES( SEQ_REVIEW_NO.NEXTVAL,'토마토토마토!',
              SYSDATE, 2, 7, 9, '3', NULL, 2
      );

--============================================
-- 미작성된 구독리뷰가 작성되어졌을 때 상태변화
UPDATE SUBS_ORDER
SET S_REVIEW_ST = 'Y'
WHERE S_ORDER_CD = #{subOrderCode}
-- 미작성된 상품리뷰가 작성되어졌을 때 상태변화
UPDATE PRODUCT_ORDER
SET P_REVIEW_ST = 'Y'
WHERE P_ORDER_CD = #{productOrderCode}

SELECT * FROM REVIEW;
SELECT * FROM SUBS_ORDER;
SELECT S_REVIEW_ST, MEMBER_NO FROM SUBS_ORDER;
SELECT P_REVIEW_ST, MEMBER_NO FROM PRODUCT_ORDER;


-- 별점 0.5 단위 (됐다!!)
SELECT REVIEW_NO, (STAR_RATING)/2 FROM REVIEW
WHERE REVIEW_CD IS NOT NULL
AND REVIEW_CD != 3
AND REVIEW_CD != 4;


SELECT * FROM REVIEW_IMG;


-- 리뷰 전체 목록 조회(별점 불러오는 쿼리 생각해야함 나누기 2?)
SELECT REVIEW_NO, MEMBER_NAME, STAR_RATING, REVIEW_CONTENT,
CASE WHEN SYSDATE - REVIEW_ENROLL_DT < 1
		THEN TO_CHAR(REVIEW_ENROLL_DT, 'HH:MI')
		ELSE TO_CHAR(REVIEW_ENROLL_DT, 'YYYY-MM-DD')
	END REVIEW_ENROLL_DT
	--,
	--(SELECT REVIEW_IMG_RENAME FROM REVIEW_IMG
	--WHERE REVIEW.REVIEW_NO = REVIEW_IMG.REVIEW_NO
	--AND REVIEW_IMG_LEVEL = 0) THUMBNAIL
FROM REVIEW
JOIN MEMBER USING(MEMBER_NO)
JOIN SUBS_ORDER USING(S_ORDER_CD)
JOIN PRODUCT_ORDER USING(P_ORDER_CD)
WHERE S_REVIEW_ST = 'Y'
AND P_REVIEW_ST = 'Y'
ORDER BY REVIEW_NO DESC;

SELECT * FROM REVIEW
JOIN MEMBER USING(MEMBER_NO);


-- 리뷰 작성에서 넘어갈 때 조회해야하는 구독상품 정보(내가 주문한 구독상품 테이블에 회원번호와 로그인한 회원 번호가 같을 때) 
SELECT S_ORDER_CD, S_DT, S_NM, S_PRICE
FROM SUBS_ORDER
JOIN SUBS USING(S_CD);


SELECT * FROM SUBS_ORDER
JOIN SUBS USING(S_CD)
WHERE S_REVIEW_ST = 'N'
AND SUBS_ORDER.MEMBER_NO = 7;

-- 리뷰 이미지 시퀀스
CREATE SEQUENCE SEQ_REVIEW_IMG_NO NOCACHE;
-- 리뷰 시퀀스
CREATE SEQUENCE SEQ_REVIEW_NO NOCACHE;

SELECT * FROM SUBS_ORDER
JOIN REVIEW USING(S_ORDER_CD);

SELECT * FROM SUBS_ORDER
JOIN MEMBER USING(MEMBER_NO)
WHERE S_REVIEW_ST = 'N'
AND MEMBER_NO = 7;

SELECT * FROM PRODUCT_ORDER
JOIN REVIEW USING(P_ORDER_CD);

SELECT * FROM REVIEW;


-- 작성 폼으로 넘어갈 때 구독 정보 불러오기
SELECT S_ORDER_CD, S_DT, S_NM, S_PRICE
FROM SUBS_ORDER
JOIN MEMBER USING(MEMBER_NO)
JOIN SUBS USING(S_CD)
WHERE S_ORDER_CD = '62'
AND MEMBER_NO = 7;

SELECT * FROM SUBS_ORDER;
SELECT * FROM SUBS;


-- 작성 폼으로 넘어갈 때 상품 정보 불러오기 
SELECT P_ORDER_CD, PRODUCT_NM, P_ORDER_DT, OPTION_NM, TOTAL_PRICE
FROM PRODUCT_ORDER
JOIN MEMBER USING(MEMBER_NO)
JOIN OPTION_TB USING(P_ORDER_CD)
JOIN OPTION_TYPE USING(OPTION_CD)
JOIN PRODUCT ON(OPTION_TYPE.P_CD = PRODUCT.P_CD)
WHERE P_ORDER_CD = '61'
AND MEMBER_NO = 7;

SELECT * FROM PRODUCT_ORDER;
SELECT * FROM PRODUCT;

--====================================================================
-- 리뷰 박스 전체후기 수 , 만족도, 나의 리뷰 수, 미작성 리뷰 수 
--====================================================================

-- 리뷰 전체 후기 수 
-- from 절로 
SELECT COUNT(REVIEW_NO)
FROM(
	SELECT REVIEW_NO, S_REVIEW_ST FROM REVIEW
	JOIN SUBS_ORDER USING(S_ORDER_CD)
	WHERE S_REVIEW_ST = 'Y'
	AND REVIEW_CD IN (1,2)

	UNION ALL

	SELECT REVIEW_NO, P_REVIEW_ST FROM REVIEW
	JOIN PRODUCT_ORDER USING(P_ORDER_CD)
	WHERE P_REVIEW_ST = 'Y'
	AND REVIEW_CD IN (1,2)
	);

SELECT COUNT(REVIEW_NO) FROM REVIEW;
SELECT * FROM REVIEW;
SELECT * FROM SUBS_ORDER;
SELECT * FROM PRODUCT_ORDER;


SELECT COUNT(S_REVIEW_ST) FROM SUBS_ORDER
WHERE S_REVIEW_ST = 'Y';
SELECT COUNT(P_REVIEW_ST) FROM PRODUCT_ORDER
WHERE P_REVIEW_ST = 'Y';


-- 나의 리뷰 별점 평균 구하기
--SELECT ROUND(AVG(STAR_RATING/2),1) FROM REVIEW;
SELECT NVL((SELECT ROUND(AVG(STAR_RATING/2),1) FROM REVIEW
		JOIN MEMBER ON(MEMBER.MEMBER_NO = REVIEW.MEMBER_NO)
		WHERE MEMBER.MEMBER_NO = 7), 0 ) FROM DUAL;


-- 나의 리뷰 수
SELECT COUNT(*) FROM REVIEW WHERE MEMBER_NO = #{memberNo};
-- 스칼라서브쿼리!!!!로 더하기
-- SELECT (
-- SELECT COUNT(S_REVIEW_ST) FROM SUBS_ORDER
-- JOIN MEMBER USING(MEMBER_NO)
-- WHERE S_REVIEW_ST = 'Y'
-- AND MEMBER_NO = 7
-- AND REVIEW_CD IN (1,2)
-- ) + (
-- SELECT COUNT(P_REVIEW_ST) FROM PRODUCT_ORDER
-- JOIN MEMBER USING(MEMBER_NO)
-- WHERE P_REVIEW_ST = 'Y'
-- AND MEMBER_NO = 7
-- AND REVIEW_CD IN (1,2)
-- ) AS MYREVIEW
-- FROM DUAL;


-- 나의 미작성 리뷰 수
-- 스칼라서브쿼리!!!!로 더하기
-- SELECT (
-- 	SELECT COUNT(*)
-- 	FROM SUBS_ORDER
-- 	JOIN SUBS USING(S_CD)
-- 	WHERE S_REVIEW_ST = 'Y'
-- 	AND SUBS_ORDER.MEMBER_NO = 7
-- 	AND REVIEW_CD IN (1,2)
-- ) + (
-- 	SELECT count(*)
-- 	FROM PRODUCT_ORDER
-- 	JOIN OPTION_TB USING(P_ORDER_CD)
-- 	JOIN OPTION_TYPE USING(OPTION_CD)
-- 	JOIN PRODUCT ON(OPTION_TYPE.P_CD = PRODUCT.P_CD)
-- 	WHERE P_REVIEW_ST = 'Y'
-- 	AND PRODUCT_ORDER.MEMBER_NO = 7
-- 	AND REVIEW_CD IN (1,2)
-- ) AS MY_UNWRITTEN_REVIEW
-- FROM DUAL;

-- 최종
SELECT (
	SELECT COUNT(*)
	FROM SUBS_ORDER
	JOIN SUBS USING(S_CD)
	WHERE S_REVIEW_ST = 'N'
	AND SUBS_ORDER.MEMBER_NO = 7
	AND REVIEW_CD IN (1,2)

) + (
	SELECT count(*)
	FROM PRODUCT_ORDER
	JOIN OPTION_TB USING(P_ORDER_CD)
	JOIN OPTION_TYPE USING(OPTION_CD)
	JOIN PRODUCT ON(OPTION_TYPE.P_CD = PRODUCT.P_CD)
	WHERE P_REVIEW_ST = 'N'
	AND PRODUCT_ORDER.MEMBER_NO = 7
	AND REVIEW_CD IN (1,2)

) AS MY_UNWRITTEN_REVIEW
FROM DUAL;



-- 확인
SELECT * FROM REVIEW;
SELECT * FROM SUBS_ORDER;
SELECT * FROM PRODUCT_ORDER;
-- 내가 쓰지 않은 리뷰 번호, 회원 이름, 구독 리뷰 상태, 상품 리뷰 상태 조회
SELECT P_REVIEW_ST, MEMBER_NAME, REVIEW_NO, REVIEW_CONTENT FROM PRODUCT_ORDER
JOIN REVIEW USING(P_ORDER_CD)
JOIN MEMBER ON(MEMBER.MEMBER_NO = PRODUCT_ORDER.MEMBER_NO)
AND MEMBER.MEMBER_NO = 7;



--====================================================================
-- 나의 리뷰 전체 조회
--====================================================================
-- 구독/상품
-- (별점, 리뷰 작성일, 구매한 상품명, 옵션명, 리뷰 내용)
-- 구독
SELECT STAR_RATING/2 , REVIEW_ENROLL_DT, REVIEW_CONTENT, S_NM FROM REVIEW
JOIN MEMBER ON(MEMBER.MEMBER_NO = REVIEW.MEMBER_NO)
JOIN SUBS_ORDER USING(S_ORDER_CD)
JOIN SUBS USING(S_CD)
WHERE MEMBER_NO = 6
AND S_REVIEW_ST = 'Y'
AND REVIEW_CD IN (1,2);

-- 상품
SELECT DISTINCT PRODUCT_NM, STAR_RATING/2 , REVIEW_ENROLL_DT, REVIEW_CONTENT, OPTION_NM FROM REVIEW
JOIN MEMBER ON(MEMBER.MEMBER_NO = REVIEW.MEMBER_NO)
JOIN PRODUCT_ORDER USING(P_ORDER_CD)
JOIN PRODUCT USING(P_CD)
JOIN OPTION_TYPE USING(P_CD)
WHERE MEMBER_NO = 6
AND P_REVIEW_ST = 'Y'
AND REVIEW_CD IN (1,2);


-- 모두보기

-- 내가 리뷰 쓴거 전체
SELECT * FROM REVIEW
WHERE MEMBER_NO = 6;

-- SELECT (
-- 	SELECT STAR_RATING/2 , REVIEW_ENROLL_DT, REVIEW_CONTENT, S_NM FROM REVIEW
-- 	JOIN MEMBER ON(MEMBER.MEMBER_NO = REVIEW.MEMBER_NO)
-- 	JOIN SUBS_ORDER USING(S_ORDER_CD)
-- 	JOIN SUBS USING(S_CD)
-- 	WHERE MEMBER_NO = 7
-- 	AND S_REVIEW_ST = 'Y'
-- 	AND REVIEW_CD IN (1,2)
-- ) + (
-- 	SELECT STAR_RATING/2 , REVIEW_ENROLL_DT, REVIEW_CONTENT, PRODUCT_NM, OPTION_NM FROM REVIEW
-- 	JOIN MEMBER ON(MEMBER.MEMBER_NO = REVIEW.MEMBER_NO)
-- 	JOIN PRODUCT_ORDER USING(P_ORDER_CD)
-- 	JOIN PRODUCT USING(P_CD)
-- 	JOIN OPTION_TYPE USING(P_CD)
-- 	WHERE MEMBER_NO = 7
-- 	AND P_REVIEW_ST = 'Y'
-- 	AND REVIEW_CD IN (1,2)
-- ) AS A
-- FROM DUAL;







--====================================================================
-- 리뷰 전체후기 리스트
--====================================================================

-- 리뷰 번호, 리뷰 이미지, 리뷰 작성일, 리뷰 내용, 별점, 리뷰 구분 코드, 회원 이름

























-- 테스트
SELECT DISTINCT PRODUCT.P_CD,P_ORDER_CD, P_ORDER_DT, PRODUCT_NM, TOTAL_PRICE
FROM PRODUCT_ORDER
JOIN OPTION_TB USING(P_ORDER_CD)
JOIN OPTION_TYPE USING(OPTION_CD)
JOIN PRODUCT ON(OPTION_TYPE.P_CD = PRODUCT.P_CD)
WHERE P_REVIEW_ST = 'N'
AND PRODUCT_ORDER.MEMBER_NO = 6


;


SELECT P_ORDER_CD, PRODUCT_NM, P_ORDER_DT, TOTAL_PRICE
FROM PRODUCT_ORDER
JOIN MEMBER USING(MEMBER_NO)
JOIN OPTION_TB USING(P_ORDER_CD)
JOIN OPTION_TYPE USING(OPTION_CD)
JOIN PRODUCT ON(OPTION_TYPE.P_CD = PRODUCT.P_CD)
WHERE MEMBER_NO = 6
AND PRODUCT.P_CD = 1
AND ROWNUM = 1
;

SELECT OPTION_COUNT, OPTION_NM, OPTION_PRICE
FROM OPTION_TB 
JOIN OPTION_TYPE USING(OPTION_CD)
WHERE P_CD = 1
AND P_ORDER_CD ='20220722-0014';


SELECT *
FROM PRODUCT_ORDER
JOIN OPTION_TB USING(P_ORDER_CD)
JOIN OPTION_TYPE USING(OPTION_CD)
JOIN PRODUCT ON(OPTION_TYPE.P_CD = PRODUCT.P_CD)
WHERE P_REVIEW_ST = 'N'
AND PRODUCT_ORDER.MEMBER_NO = 6;



SELECT COUNT(*) FROM PRODUCT_ORDER
WHERE MEMBER_NO = 6;
AND P_REVIEW_ST = 'N';

SELECT count(*)
			FROM PRODUCT_ORDER
			JOIN OPTION_TB USING(P_ORDER_CD)
			JOIN OPTION_TYPE USING(OPTION_CD)
			JOIN PRODUCT ON(OPTION_TYPE.P_CD = PRODUCT.P_CD)
			WHERE P_REVIEW_ST = 'N'
			AND PRODUCT_ORDER.MEMBER_NO = 6;

SELECT *
FROM PRODUCT_ORDER
LEFT JOIN OPTION_TB USING(P_ORDER_CD)
LEFT JOIN OPTION_TYPE USING(OPTION_CD)
LEFT JOIN PRODUCT ON(OPTION_TYPE.P_CD = PRODUCT.P_CD)
WHERE  PRODUCT_ORDER.MEMBER_NO  = 6;

DELETE FROM PRODUCT_ORDER
WHERE P_ORDER_CD = '20220722-004';



SELECT (
	SELECT COUNT(*)
	FROM SUBS_ORDER
	JOIN SUBS USING(S_CD)
	WHERE S_REVIEW_ST = 'Y'
	AND SUBS_ORDER.MEMBER_NO = 6

) + (
	SELECT COUNT(DISTINCT P_CD)
	FROM PRODUCT_ORDER
	JOIN OPTION_TB USING(P_ORDER_CD)
	JOIN OPTION_TYPE USING(OPTION_CD)
	JOIN PRODUCT USING(P_CD)
	WHERE MEMBER_NO = 6
	AND (P_ORDER_CD, P_CD) IN (SELECT P_ORDER_CD, P_CD FROM REVIEW
									WHERE MEMBER_NO = 6)

) AS MY_UNWRITTEN_REVIEW
FROM DUAL;



SELECT COUNT(*) FROM REVIEW WHERE MEMBER_NO = 6;

SELECT COUNT(*) FROM (
SELECT DISTINCT P_ORDER_CD, P_CD
			FROM PRODUCT_ORDER
			JOIN OPTION_TB USING(P_ORDER_CD)
			JOIN OPTION_TYPE USING(OPTION_CD)
			JOIN PRODUCT USING(P_CD)
			WHERE MEMBER_NO = 6
			AND (P_ORDER_CD, P_CD) NOT IN (SELECT P_ORDER_CD, P_CD FROM REVIEW
			                                WHERE MEMBER_NO = 6));