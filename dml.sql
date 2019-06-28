-- 插入记录  
insert into score1 values (5, 2, 1001, 80);

-- 修改记录  
update score1 set score=score+1 where s_id=5;

--  删除记录  
delete from score1 where s_id=5;

-- 查询记录  
select * from score1;