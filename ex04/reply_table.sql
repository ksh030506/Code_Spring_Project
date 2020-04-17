-- tbl_reply 테이블 생성하기
CREATE TABLE tbl_reply (
    rno NUMBER(10,0),
    bno NUMBER(10,0) not null,
    reply VARCHAR2(1000) not null,
    replyer VARCHAR2(50) not null,
    replyDate DATE DEFAULT sysdate,
    updateDate DATE DEFAULT sysdate
    );
    
-- seq_reply 자동 시퀀스 생성하기
CREATE SEQUENCE seq_reply;

-- bno 이라는 칼럼을 PK로 잡아 해당 댓글이 어떤 게시물의 댓글인제 명시
ALTER TABLE tbl_reply ADD CONSTRAINT pk_reply PRIMARY KEY (rno);

-- 댓글 자체는 CRUD가 가능 => 별도의 PK를 부여 => FK 설정을 통해 tbl_board 테이블을 참조하도록 설정
ALTER TABLE tbl_reply ADD CONSTRAINT fk_reply_board
FOREIGN KEY (bno) REFERENCES tbl_board (bno);

commit;