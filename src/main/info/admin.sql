-- 관리자 회원 등록
insert into member values(s_member.nextval, 'admin', '38252f54a15f38fe15c2bb2304bbf1b27f0f17f9b6d7998ba4ac3833d5842c9d23f2ec6f468708f702204b7cf408fdb13391b82c9baea6137b4a4dce19537bb3', '관리자', '010-1234-1234', '1983-01-19', '06241', '서울특별시 강남구 강남대로 358', '상세주소', 'pirates119@gmail.com', 'a', 'n', sysdate);
commit;