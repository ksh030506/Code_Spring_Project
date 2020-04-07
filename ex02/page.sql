select * from tbl_board ORDER by bno DESC;

insert into tbl_board (bno, title, content, writer) 
(select seq_board.nextval, title, content, writer from tbl_board);

select * from tbl_board ORDER by bno DESC;


select
    /*+ INDEX_DESC(tbl_board pk_board) */
    *
    from
        tbl_board
    where bno > 0;
    
select * from tbl_board ORDER by bno desc;


select /*+INDEX_DESC (tbl_board pk_board) */*
from tbl_board;


select /*+ FULL(tbl_board) */ * from tbl_board order by bno desc;

select /*+ INDEX_ASC(tbl_board) */ * from tbl_board where bno > 0;
select /*+ INDEX_DESC(tbl_board) */ * from tbl_board where bno > 0;



select ROWNUM rn, bno, title from tbl_board;
select /*+ FULL(tbl_bard) */ ROWNUM rn, bno, title from tbl_board where bno > 0 ORDER by bno;

select /*+ INDEX_ASC(tbl_board pk_board) */
    ROWNUM rn, bno, title, content
    from tbl_board;
    
-- 10페이지씩 페지징 처리
select /*+ INDEX_DESC(tbl_board pk_board) */
ROWNUM rn, bno, title, content from tbl_board where bno > 0;

select /*+ INDEX_DESC(tbl_board pk_board) */
ROWNUM rn, bno, title, content from tbl_board where ROWNUM <= 10;



-- 인라인뷰를 사용하여 2페이지의 데이터 처리하기
select
    rn, bno, title, content
    from
        (
        select /*+ INDEX_DESC(tbl_board pk_board) */
            ROWNUM rn, bno, title, content
            from
                tbl_board
            where ROWNUM <= 20
        )
    where rn > 10;