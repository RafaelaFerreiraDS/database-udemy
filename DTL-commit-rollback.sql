use secao_04;

select * from tipo_produto;

-- transaction

start transaction;
	insert into tipo_produto (descricao) values ('Farmacia');
    insert into tipo_produto (descricao) values ('Cosmético');
    
-- commit
commit;

-- rollback
rollback;
    