drop table member cascade constraints;
drop table class_category cascade constraints;
drop table class cascade constraints;
drop table class_member cascade constraints;
drop table board_tag cascade constraints;
drop table board cascade constraints;
drop table comments cascade constraints;
drop table calendar cascade constraints;
drop table notice cascade constraints;
drop table gallery cascade constraints;
drop table qna cascade constraints;
drop table report_category cascade constraints;
drop table board_report cascade constraints;
drop table class_report cascade constraints;
drop table comments_report cascade constraints;
-------------------------------------------------------
-------------------------------------------------------회원테이블

CREATE TABLE member 
(
  member_ID VARCHAR2(20) NOT NULL 
, member_PWD VARCHAR2(100) NOT NULL 
, member_NAME VARCHAR2(20) NOT NULL 
, member_EMAIL VARCHAR2(50) NOT NULL 
, member_BIRTHDAY CHAR(6) NOT NULL 
, QUESTION VARCHAR2(100) NOT NULL 
, ANSWER VARCHAR2(50) NOT NULL 
, JOIN_DATE DATE DEFAULT sysdate NOT NULL 
, member_ORIGINAL_IMG VARCHAR2(30) 
, member_RENAME_IMG VARCHAR2(30) 
, member_NICKNAME VARCHAR2(20) NOT NULL 
, member_out CHAR(1) DEFAULT 'N' NOT NULL 
, CONSTRAINT member_PK PRIMARY KEY (member_ID) ENABLE
, CONSTRAINT member_out_ck CHECK (member_out IN('Y','N'))
);

COMMENT ON COLUMN member.member_id IS '멤버 아이디';
COMMENT ON COLUMN member.member_pwd IS '멤버 비밀번호';
COMMENT ON COLUMN member.member_name IS '멤버 이름';
COMMENT ON COLUMN member.member_email IS '멤버 아이디';
COMMENT ON COLUMN member.member_birthday IS '멤버 생일';
COMMENT ON COLUMN member.question IS '비번 질문 번호';
COMMENT ON COLUMN member.answer IS '비번 답변';
COMMENT ON COLUMN member.join_date IS '가입 날짜';
COMMENT ON COLUMN member.member_original_img IS '원본 이미지 파일';
COMMENT ON COLUMN member.member_rename_img IS '수정된 이미지 파일';
COMMENT ON COLUMN member.member_out IS '탈퇴';
COMMENT ON COLUMN member.member_nickname IS '닉네임';

-------------------------------------------------------
-------------------------------------------------------클래스카테고리

create table class_category(
  class_category_no char(2) primary key,
  class_category_name varchar2(20) not null
);

COMMENT ON COLUMN CLASS_CATEGORY.class_category_no is '클래스카테고리번호';
COMMENT ON COLUMN CLASS_CATEGORY.clasS_category_name is '클래스카테고리이름';

-------------------------------------------------------
-------------------------------------------------------클래스테이블

create table class(
  class_no number primary key,
  class_title varchar2(50) unique not null,
  class_subtitle varchar2(100) ,
  class_category_no char(2),--외래키
  class_open char(1) ,--체크y,n
  class_original_img varchar2(30),
  class_rename_img varchar2(30),
  create_date date default sysdate,
  class_close char(1),--체크y,n
  constraint class_open_ck CHECK (class_open IN('Y','N')),
  constraint class_close_ck CHECK (class_close IN('Y','N')),
  constraint class_category_no_fk FOREIGN KEY(class_category_no)
  references class_category(class_category_no)
);

COMMENT ON COLUMN CLASS.class_no is '클래스번호';
COMMENT ON COLUMN CLASS.class_title is '클래스제목';
COMMENT ON COLUMN CLASS.class_subtitle is '클래스부제목';
COMMENT ON COLUMN CLASS.class_open is '클래스공개여부';
COMMENT ON COLUMN CLASS.class_original_img is '클래스사진원본이름';
COMMENT ON COLUMN CLASS.class_rename_img is '클래스사진바뀐이름';
COMMENT ON COLUMN CLASS.create_date is '클래스생성날짜';
COMMENT ON COLUMN CLASS.class_close is '클래스삭제여부';

create sequence class_seq
start with 1
increment by 1;

-------------------------------------------------------
-------------------------------------------------------클래스 회원테이블

create table class_member(
  class_member_no number primary key,
  class_no number,--외래키
  member_id varchar2(20),--외래키
  class_king char(1),--yn
  class_join_date date default sysdate,
  class_member_leave char(1) default 'N',--yn
  constraint cc_class_no_fk FOREIGN KEy(class_no)
  references class(class_no),
  constraint cc_member_fk FOREIGN KEY(member_id)
  references member(member_id),
  constraint cc_class_king_ck CHECK (class_king IN('Y','N')),
  constraint cc_class_member_leave_ck CHECK(class_member_leave IN('Y','N'))
);

COMMENT ON COLUMN CLASS_MEMBER.CLASS_NO IS '클래스 번호';
COMMENT ON COLUMN CLASS_MEMBER.CLASS_MEMBER_NO IS '클래스 회원 sequence';
COMMENT ON COLUMN CLASS_MEMBER.MEMBER_ID IS '회원 아이디';
COMMENT ON COLUMN CLASS_MEMBER.CLASS_KING IS '클래스 장(Y/N)';
COMMENT ON COLUMN CLASS_MEMBER.CLASS_JOIN_DATE IS '클래스 가입 날짜';
COMMENT ON COLUMN CLASS_MEMBER.CLASS_MEMBER_LEAVE IS '클래스 탈퇴여부';

create sequence class_member_seq
start with 1
increment by 1;
-------------------------------------------------------
-------------------------------------------------------게시판 말머리

create table board_tag(
  board_tag_no char(2) primary key,
  board_tag_name varchar2(20) not null
);

comment on COLUMN board_tag.board_tag_no is '게시판 말머리';
comment on COLUMN board_tag.board_tag_name is '말머리 이름';
-------------------------------------------------------
-------------------------------------------------------게시판 테이블

create table board(
  board_no number primary key,
  class_member_no number,-- 외래키
  board_title varchar2(100) not null,
  board_note varchar2(3000) not null,
  board_date date default sysdate,
  board_like number default 0,
  board_tag_no char(2),--외래키
  board_view number default 0,
  board_original_file varchar2(30),
  board_rename_file varchar2(30),
  board_alarm char(1) default 'N',--yn
  constraint board_cc_no_fk FOREIGN KEy(class_member_no) references class_member(class_member_no),
  constraint board_tag_no_fk FOREIGN KEy(board_tag_no) references board_tag(board_tag_no),
  constraint board_alarm_ck CHECK (board_alarm IN('Y','N'))
);

comment on COLUMN board.board_no is '게시글 번호';
comment on COLUMN board.class_member_no is '클래스_게시자_번호';
comment on COLUMN board.board_title is '게시글 제목';
comment on COLUMN board.board_note is '게시글 내용';
comment on COLUMN board.board_date is '게시글 작성일자';
comment on COLUMN board.board_like is '게시글 좋아요! 수';
comment on COLUMN board.board_tag_no is '말머리 종류(외래키: board_tag_no_fk)';
comment on COLUMN board.board_view is '조회수';
comment on COLUMN board.board_original_file is '첨부파일';
comment on COLUMN board.board_rename_file is '같은 첨부 파일명 일시 식별 컬럼';
comment on COLUMN board.board_alarm is '게시글 알람 등록여부';


create sequence 
board_no_sequence
start with 1
increment by 1
maxvalue 99999999999
minvalue 1
nocycle nocache;

-------------------------------------------------------
-------------------------------------------------------댓글테이블

create table comments(
  comments_no number primary key,
  board_no number,--외래키
  member_id varchar(20),--외래키
  comments_date date default sysdate,
  comments_note varchar2(300) not null,
  constraint com_board_no_fk FOREIGN KEy(board_no) references board(board_no),
  constraint com_member_id_fk FOREIGN KEY (member_id) references member(member_id)
);

COMMENT ON COLUMN COMMENTs.COMMENTs_NO IS '댓글 sequence';
COMMENT ON COLUMN COMMENTs.BOARD_NO IS '게시글 번호';
COMMENT ON COLUMN COMMENTs.MEMBER_ID IS '회원ID';
COMMENT ON COLUMN COMMENTs.COMMENTs_DATE IS '댓글 등록 날짜';
COMMENT ON COLUMN COMMENTs.COMMENTs_NOTE IS '댓글 내용';

create sequence comments_seq
start with 1
increment by 1;
-------------------------------------------------------
-------------------------------------------------------일정 테이블

create table calendar(
  cal_no number primary key,
  class_member_no number,--외래키
  cal_title varchar2(50) not null,
  cal_note varchar2(300) ,
  cal_sdate date not null,
  cal_edate date ,
  board_no number,--외래키
  constraint cal_cc_no_fk FOREIGN KEY(class_member_no) 
  references class_member(class_member_no),
  constraint cal_board_no_fk FOREIGN KEY(board_no) 
  references board(board_no)
);

COMMENT ON COLUMN CALENDAR.cal_no is '캘린더번호';
COMMENT ON COLUMN CALENDAR.cal_title is '캘린더제목';
COMMENT ON COLUMN CALENDAR.cal_note is '캘린더내용';
COMMENT ON COLUMN CALENDAR.cal_sdate is '일정시작날짜';
COMMENT ON COLUMN CALENDAR.cal_edate is '일정종료날짜';

create sequence calendar_seq
start with 1
increment by 1;
-------------------------------------------------------
-------------------------------------------------------공지사항 테이블

create table notice(
  notice_no number primary key,
  notice_title varchar2(100) not null,
  notice_note varchar2(3000) not null,
  notice_date date default sysdate,
  notice_view number default 0,
  notice_original_file varchar2(30),
  notice_rename_file varchar2(30)
);

COMMENT ON COLUMN NOTICE.NOTICE_NO IS '공지번호';
COMMENT ON COLUMN NOTICE.NOTICE_TITLE IS '공지 제목';
COMMENT ON COLUMN NOTICE.NOTICE_DATE IS '공지 작성일';
COMMENT ON COLUMN NOTICE.NOTICE_NOTE IS '공지내용';
COMMENT ON COLUMN NOTICE.NOTICE_VIEW IS '공지조회수';
COMMENT ON COLUMN NOTICE.NOTICE_ORIGINAL_FILE IS '공지첨부파일';
COMMENT ON COLUMN NOTICE.NOTICE_RENAME_FILE IS '공지첨부파일이름 바뀐것';

create sequence notice_seq
start with 1
increment by 1;
-------------------------------------------------------
-------------------------------------------------------qna테이블

create table qna(
  qna_no number primary key,
  qna_writer varchar2(20) ,--외래키
  qna_title varchar2(100) not null,
  qna_note varchar2(3000) not null,
  qna_date date default sysdate,
  qna_view number default 0,
  qna_original_file varchar2(30),
  qna_rename_file varchar2(30),
  qna_answer varchar2(3000),
  answer_date date,
  constraint qna_writer FOREIGN KEY(qna_writer)
  references member(member_id)
);

COMMENT ON COLUMN QNA.QNA_NO IS '질문번호';
COMMENT ON COLUMN QNA.QNA_WRITER IS '질문작성자';
COMMENT ON COLUMN QNA.QNA_TITLE IS '질문제목';
COMMENT ON COLUMN QNA.QNA_DATE IS '질문작성일';
COMMENT ON COLUMN QNA.QNA_NOTE IS '질문내용';
COMMENT ON COLUMN QNA.QNA_VIEW IS '질문조회수';
COMMENT ON COLUMN QNA.QNA_ORIGINAL_FILE IS '질문첨부파일';
COMMENT ON COLUMN QNA.QNA_RENAME_FILE IS '질문첨부파일이름 바뀐것';
COMMENT ON COLUMN QNA.QNA_ANSWER IS '질문답변';

create sequence qna_seq
start with 1
increment by 1;
-------------------------------------------------------
-------------------------------------------------------갤러리 테이블

create table gallery(
  gal_no number primary key,
  class_member_no number,
  gal_title varchar2(100) not null,
  gal_note varchar2(3000) not null,
  gal_date date default sysdate,
  gal_view number default 0,
  gal_original_img varchar2(30),
  gal_rename_img varchar2(30),
  constraint gal_cm_no_fk FOREIGN KEY (class_member_no)
  references class_member(class_member_no )
);

COMMENT ON COLUMN gallery.gal_no IS '겔러리 넘버';
COMMENT ON COLUMN gallery.gal_title IS '겔러리 제목';
COMMENT ON COLUMN gallery.gal_note IS '겔러리 내용';
COMMENT ON COLUMN gallery.gal_date IS '겔러리 날짜';
COMMENT ON COLUMN gallery.gal_view IS '겔러리 조회수';
COMMENT ON COLUMN gallery.gal_original_img IS '겔러리 원본 파일 이름';
COMMENT ON COLUMN gallery.gal_rename_img IS '겔러리 수정된 파일 이름';

create sequence
gal_no_seq
start with 1
increment by 1
maxvalue 99999999
minvalue 1
nocycle nocache;

-------------------------------------------------------
-------------------------------------------------------신고 카테고리

create table report_category(
  report_category_no char(2) primary key,
  report_category_note varchar2(20)
);

comment on column report_category.report_category is '신고 항목';
comment on column report_category.report_category_no is '항목 번호';

-------------------------------------------------------
-------------------------------------------------------클래스 신고

create table class_report(
  report_no number primary key,
  member_id varchar2(20),--외래키
  class_no number,--외래키
  report_category_no char(2),--외래키
  report_note varchar2(300) not null,
  report_date date default sysdate,
  report_original_file varchar2(30),
  report_rename_file varchar2(30),
  report_fake char(1),
  constraint cr_report_fake_ck CHECK (report_fake IN('Y','N')),
  constraint cr_member_id_fk FOREIGN KEY(member_id)
  references member(member_id),
  constraint cr_class_no_fk FOREIGN KEY (class_no)
  references class(clasS_no),
  constraint cr_report_cate_no_fk FOREIGN KEY(report_category_no)
  references report_category(report_category_no)
);

comment on column class_report.report_no is '신고 번호';
comment on column class_report.class_no is '클래스 번호';
comment on column class_report.report_category_no is '신고 항목';
comment on column class_report.report_note is '신고 내용';
comment on column class_report.report_date is '신고일';
comment on column class_report.member_id is '신고자';
comment on column class_report.report_original_file is '캡쳐원본 이름';
comment on column class_report.report_rename_file is '캡쳐수정 이름';
comment on column class_report.report_fake is '허위 여부';

create sequence class_report_seq
start with 1
increment by 1;

-------------------------------------------------------
-------------------------------------------------------게시판 신고

create table board_report(
  report_no number primary key,
  member_id varchar2(20),--외래키
  board_no number,--외래키
  report_category_no char(2),--외래키
  report_note varchar2(300) not null,
  report_date date default sysdate,
  report_original_file varchar2(30),
  report_rename_file varchar2(30),
  report_fake char(1),
  constraint br_report_fake_ck CHECK (report_fake IN('Y','N')),
  constraint br_member_id_fk FOREIGN KEY(member_id)
  references member(member_id),
  constraint br_board_no_fk FOREIGN KEY (board_no)
  references board(board_no),
  constraint br_report_cate_no_fk FOREIGN KEy(report_category_no)
  references report_category(report_category_no)
);

comment on column board_report.report_no is '신고 번호';
comment on column board_report.board_no is '게시글 번호';
comment on column board_report.report_category_no is '신고 항목';
comment on column board_report.report_note is '신고 내용';
comment on column board_report.report_date is '신고일';
comment on column board_report.member_id is '신고자';
comment on column board_report.report_original_file is '캡쳐원본 이름';
comment on column board_report.report_rename_file is '캡쳐수정 이름';
comment on column board_report.report_fake is '허위 여부';

create sequence board_report_seq
start with 1
increment by 1;
-------------------------------------------------------
-------------------------------------------------------댓글 신고

create table comments_report(
  report_no number primary key,
  member_id varchar2(20),--외래키
  comments_no number,--외래키
  report_category_no char(2),--외래키
  report_note varchar2(300) not null,
  report_date date default sysdate,
  report_original_filename varchar2(30),
  report_rename_filename varchar2(30),
  report_fake char(1),
  constraint cor_report_fake_ck CHECK (report_fake IN('Y','N')),
  constraint cor_member_id_fk FOREIGN KEY(member_id)
  references member(member_id),
  constraint cor_comments_no_fk FOREIGN KEY (comments_no)
  references comments(comments_no),
  constraint cor_report_cate_no_fk FOREIGN KEY(report_category_no)
  references report_category(report_category_no)
);

comment on column comments_report.report_no is '신고 번호';
comment on column comments_report.comment_no is '댓글 번호';
comment on column comments_report.report_category_no is '신고 항목';
comment on column comments_report.report_note is '신고 내용';
comment on column comments_report.report_date is '신고일';
comment on column comments_report.member_id is '신고자';
comment on column comments_report.report_originalfilename is '캡쳐원본 이름';
comment on column comments_report.report_renamefilename is '캡쳐수정 이름';
comment on column comments_report.report_fake is '허위 여부';

create sequence comment_report_seq
start with 1
increment by 1;