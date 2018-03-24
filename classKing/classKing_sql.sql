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
-------------------------------------------------------ȸ�����̺�

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

COMMENT ON COLUMN member.member_id IS '��� ���̵�';
COMMENT ON COLUMN member.member_pwd IS '��� ��й�ȣ';
COMMENT ON COLUMN member.member_name IS '��� �̸�';
COMMENT ON COLUMN member.member_email IS '��� ���̵�';
COMMENT ON COLUMN member.member_birthday IS '��� ����';
COMMENT ON COLUMN member.question IS '��� ���� ��ȣ';
COMMENT ON COLUMN member.answer IS '��� �亯';
COMMENT ON COLUMN member.join_date IS '���� ��¥';
COMMENT ON COLUMN member.member_original_img IS '���� �̹��� ����';
COMMENT ON COLUMN member.member_rename_img IS '������ �̹��� ����';
COMMENT ON COLUMN member.member_out IS 'Ż��';
COMMENT ON COLUMN member.member_nickname IS '�г���';

-------------------------------------------------------
-------------------------------------------------------Ŭ����ī�װ�

create table class_category(
  class_category_no char(2) primary key,
  class_category_name varchar2(20) not null
);

COMMENT ON COLUMN CLASS_CATEGORY.class_category_no is 'Ŭ����ī�װ���ȣ';
COMMENT ON COLUMN CLASS_CATEGORY.clasS_category_name is 'Ŭ����ī�װ��̸�';

-------------------------------------------------------
-------------------------------------------------------Ŭ�������̺�

create table class(
  class_no number primary key,
  class_title varchar2(50) unique not null,
  class_subtitle varchar2(100) ,
  class_category_no char(2),--�ܷ�Ű
  class_open char(1) ,--üũy,n
  class_original_img varchar2(30),
  class_rename_img varchar2(30),
  create_date date default sysdate,
  class_close char(1),--üũy,n
  constraint class_open_ck CHECK (class_open IN('Y','N')),
  constraint class_close_ck CHECK (class_close IN('Y','N')),
  constraint class_category_no_fk FOREIGN KEY(class_category_no)
  references class_category(class_category_no)
);

COMMENT ON COLUMN CLASS.class_no is 'Ŭ������ȣ';
COMMENT ON COLUMN CLASS.class_title is 'Ŭ��������';
COMMENT ON COLUMN CLASS.class_subtitle is 'Ŭ����������';
COMMENT ON COLUMN CLASS.class_open is 'Ŭ������������';
COMMENT ON COLUMN CLASS.class_original_img is 'Ŭ�������������̸�';
COMMENT ON COLUMN CLASS.class_rename_img is 'Ŭ���������ٲ��̸�';
COMMENT ON COLUMN CLASS.create_date is 'Ŭ����������¥';
COMMENT ON COLUMN CLASS.class_close is 'Ŭ������������';

create sequence class_seq
start with 1
increment by 1;

-------------------------------------------------------
-------------------------------------------------------Ŭ���� ȸ�����̺�

create table class_member(
  class_member_no number primary key,
  class_no number,--�ܷ�Ű
  member_id varchar2(20),--�ܷ�Ű
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

COMMENT ON COLUMN CLASS_MEMBER.CLASS_NO IS 'Ŭ���� ��ȣ';
COMMENT ON COLUMN CLASS_MEMBER.CLASS_MEMBER_NO IS 'Ŭ���� ȸ�� sequence';
COMMENT ON COLUMN CLASS_MEMBER.MEMBER_ID IS 'ȸ�� ���̵�';
COMMENT ON COLUMN CLASS_MEMBER.CLASS_KING IS 'Ŭ���� ��(Y/N)';
COMMENT ON COLUMN CLASS_MEMBER.CLASS_JOIN_DATE IS 'Ŭ���� ���� ��¥';
COMMENT ON COLUMN CLASS_MEMBER.CLASS_MEMBER_LEAVE IS 'Ŭ���� Ż�𿩺�';

create sequence class_member_seq
start with 1
increment by 1;
-------------------------------------------------------
-------------------------------------------------------�Խ��� ���Ӹ�

create table board_tag(
  board_tag_no char(2) primary key,
  board_tag_name varchar2(20) not null
);

comment on COLUMN board_tag.board_tag_no is '�Խ��� ���Ӹ�';
comment on COLUMN board_tag.board_tag_name is '���Ӹ� �̸�';
-------------------------------------------------------
-------------------------------------------------------�Խ��� ���̺�

create table board(
  board_no number primary key,
  class_member_no number,-- �ܷ�Ű
  board_title varchar2(100) not null,
  board_note varchar2(3000) not null,
  board_date date default sysdate,
  board_like number default 0,
  board_tag_no char(2),--�ܷ�Ű
  board_view number default 0,
  board_original_file varchar2(30),
  board_rename_file varchar2(30),
  board_alarm char(1) default 'N',--yn
  constraint board_cc_no_fk FOREIGN KEy(class_member_no) references class_member(class_member_no),
  constraint board_tag_no_fk FOREIGN KEy(board_tag_no) references board_tag(board_tag_no),
  constraint board_alarm_ck CHECK (board_alarm IN('Y','N'))
);

comment on COLUMN board.board_no is '�Խñ� ��ȣ';
comment on COLUMN board.class_member_no is 'Ŭ����_�Խ���_��ȣ';
comment on COLUMN board.board_title is '�Խñ� ����';
comment on COLUMN board.board_note is '�Խñ� ����';
comment on COLUMN board.board_date is '�Խñ� �ۼ�����';
comment on COLUMN board.board_like is '�Խñ� ���ƿ�! ��';
comment on COLUMN board.board_tag_no is '���Ӹ� ����(�ܷ�Ű: board_tag_no_fk)';
comment on COLUMN board.board_view is '��ȸ��';
comment on COLUMN board.board_original_file is '÷������';
comment on COLUMN board.board_rename_file is '���� ÷�� ���ϸ� �Ͻ� �ĺ� �÷�';
comment on COLUMN board.board_alarm is '�Խñ� �˶� ��Ͽ���';


create sequence 
board_no_sequence
start with 1
increment by 1
maxvalue 99999999999
minvalue 1
nocycle nocache;

-------------------------------------------------------
-------------------------------------------------------������̺�

create table comments(
  comments_no number primary key,
  board_no number,--�ܷ�Ű
  member_id varchar(20),--�ܷ�Ű
  comments_date date default sysdate,
  comments_note varchar2(300) not null,
  constraint com_board_no_fk FOREIGN KEy(board_no) references board(board_no),
  constraint com_member_id_fk FOREIGN KEY (member_id) references member(member_id)
);

COMMENT ON COLUMN COMMENTs.COMMENTs_NO IS '��� sequence';
COMMENT ON COLUMN COMMENTs.BOARD_NO IS '�Խñ� ��ȣ';
COMMENT ON COLUMN COMMENTs.MEMBER_ID IS 'ȸ��ID';
COMMENT ON COLUMN COMMENTs.COMMENTs_DATE IS '��� ��� ��¥';
COMMENT ON COLUMN COMMENTs.COMMENTs_NOTE IS '��� ����';

create sequence comments_seq
start with 1
increment by 1;
-------------------------------------------------------
-------------------------------------------------------���� ���̺�

create table calendar(
  cal_no number primary key,
  class_member_no number,--�ܷ�Ű
  cal_title varchar2(50) not null,
  cal_note varchar2(300) ,
  cal_sdate date not null,
  cal_edate date ,
  board_no number,--�ܷ�Ű
  constraint cal_cc_no_fk FOREIGN KEY(class_member_no) 
  references class_member(class_member_no),
  constraint cal_board_no_fk FOREIGN KEY(board_no) 
  references board(board_no)
);

COMMENT ON COLUMN CALENDAR.cal_no is 'Ķ������ȣ';
COMMENT ON COLUMN CALENDAR.cal_title is 'Ķ��������';
COMMENT ON COLUMN CALENDAR.cal_note is 'Ķ��������';
COMMENT ON COLUMN CALENDAR.cal_sdate is '�������۳�¥';
COMMENT ON COLUMN CALENDAR.cal_edate is '�������ᳯ¥';

create sequence calendar_seq
start with 1
increment by 1;
-------------------------------------------------------
-------------------------------------------------------�������� ���̺�

create table notice(
  notice_no number primary key,
  notice_title varchar2(100) not null,
  notice_note varchar2(3000) not null,
  notice_date date default sysdate,
  notice_view number default 0,
  notice_original_file varchar2(30),
  notice_rename_file varchar2(30)
);

COMMENT ON COLUMN NOTICE.NOTICE_NO IS '������ȣ';
COMMENT ON COLUMN NOTICE.NOTICE_TITLE IS '���� ����';
COMMENT ON COLUMN NOTICE.NOTICE_DATE IS '���� �ۼ���';
COMMENT ON COLUMN NOTICE.NOTICE_NOTE IS '��������';
COMMENT ON COLUMN NOTICE.NOTICE_VIEW IS '������ȸ��';
COMMENT ON COLUMN NOTICE.NOTICE_ORIGINAL_FILE IS '����÷������';
COMMENT ON COLUMN NOTICE.NOTICE_RENAME_FILE IS '����÷�������̸� �ٲ��';

create sequence notice_seq
start with 1
increment by 1;
-------------------------------------------------------
-------------------------------------------------------qna���̺�

create table qna(
  qna_no number primary key,
  qna_writer varchar2(20) ,--�ܷ�Ű
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

COMMENT ON COLUMN QNA.QNA_NO IS '������ȣ';
COMMENT ON COLUMN QNA.QNA_WRITER IS '�����ۼ���';
COMMENT ON COLUMN QNA.QNA_TITLE IS '��������';
COMMENT ON COLUMN QNA.QNA_DATE IS '�����ۼ���';
COMMENT ON COLUMN QNA.QNA_NOTE IS '��������';
COMMENT ON COLUMN QNA.QNA_VIEW IS '������ȸ��';
COMMENT ON COLUMN QNA.QNA_ORIGINAL_FILE IS '����÷������';
COMMENT ON COLUMN QNA.QNA_RENAME_FILE IS '����÷�������̸� �ٲ��';
COMMENT ON COLUMN QNA.QNA_ANSWER IS '�����亯';

create sequence qna_seq
start with 1
increment by 1;
-------------------------------------------------------
-------------------------------------------------------������ ���̺�

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

COMMENT ON COLUMN gallery.gal_no IS '�ַ��� �ѹ�';
COMMENT ON COLUMN gallery.gal_title IS '�ַ��� ����';
COMMENT ON COLUMN gallery.gal_note IS '�ַ��� ����';
COMMENT ON COLUMN gallery.gal_date IS '�ַ��� ��¥';
COMMENT ON COLUMN gallery.gal_view IS '�ַ��� ��ȸ��';
COMMENT ON COLUMN gallery.gal_original_img IS '�ַ��� ���� ���� �̸�';
COMMENT ON COLUMN gallery.gal_rename_img IS '�ַ��� ������ ���� �̸�';

create sequence
gal_no_seq
start with 1
increment by 1
maxvalue 99999999
minvalue 1
nocycle nocache;

-------------------------------------------------------
-------------------------------------------------------�Ű� ī�װ�

create table report_category(
  report_category_no char(2) primary key,
  report_category_note varchar2(20)
);

comment on column report_category.report_category is '�Ű� �׸�';
comment on column report_category.report_category_no is '�׸� ��ȣ';

-------------------------------------------------------
-------------------------------------------------------Ŭ���� �Ű�

create table class_report(
  report_no number primary key,
  member_id varchar2(20),--�ܷ�Ű
  class_no number,--�ܷ�Ű
  report_category_no char(2),--�ܷ�Ű
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

comment on column class_report.report_no is '�Ű� ��ȣ';
comment on column class_report.class_no is 'Ŭ���� ��ȣ';
comment on column class_report.report_category_no is '�Ű� �׸�';
comment on column class_report.report_note is '�Ű� ����';
comment on column class_report.report_date is '�Ű���';
comment on column class_report.member_id is '�Ű���';
comment on column class_report.report_original_file is 'ĸ�Ŀ��� �̸�';
comment on column class_report.report_rename_file is 'ĸ�ļ��� �̸�';
comment on column class_report.report_fake is '���� ����';

create sequence class_report_seq
start with 1
increment by 1;

-------------------------------------------------------
-------------------------------------------------------�Խ��� �Ű�

create table board_report(
  report_no number primary key,
  member_id varchar2(20),--�ܷ�Ű
  board_no number,--�ܷ�Ű
  report_category_no char(2),--�ܷ�Ű
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

comment on column board_report.report_no is '�Ű� ��ȣ';
comment on column board_report.board_no is '�Խñ� ��ȣ';
comment on column board_report.report_category_no is '�Ű� �׸�';
comment on column board_report.report_note is '�Ű� ����';
comment on column board_report.report_date is '�Ű���';
comment on column board_report.member_id is '�Ű���';
comment on column board_report.report_original_file is 'ĸ�Ŀ��� �̸�';
comment on column board_report.report_rename_file is 'ĸ�ļ��� �̸�';
comment on column board_report.report_fake is '���� ����';

create sequence board_report_seq
start with 1
increment by 1;
-------------------------------------------------------
-------------------------------------------------------��� �Ű�

create table comments_report(
  report_no number primary key,
  member_id varchar2(20),--�ܷ�Ű
  comments_no number,--�ܷ�Ű
  report_category_no char(2),--�ܷ�Ű
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

comment on column comments_report.report_no is '�Ű� ��ȣ';
comment on column comments_report.comment_no is '��� ��ȣ';
comment on column comments_report.report_category_no is '�Ű� �׸�';
comment on column comments_report.report_note is '�Ű� ����';
comment on column comments_report.report_date is '�Ű���';
comment on column comments_report.member_id is '�Ű���';
comment on column comments_report.report_originalfilename is 'ĸ�Ŀ��� �̸�';
comment on column comments_report.report_renamefilename is 'ĸ�ļ��� �̸�';
comment on column comments_report.report_fake is '���� ����';

create sequence comment_report_seq
start with 1
increment by 1;