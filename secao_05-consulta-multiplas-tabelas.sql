select p.codigo, p.descricao, p.preco, tp.descricao
	from produto as p, tipo_produto as tp
    where p.codigo_tipo_produto = tp.codigo;
    
select p.codigo, p.descricao, p.preco, tp.descricao
	from produto as p, tipo_produto as tp
    where p.codigo_tipo_produto = tp.codigo and tp.descricao = 'Computadores';

select * from tipo_produto;
select * from produto;