CREATE DATABASE secao_04;

USE secao_04;

# DQL

create table tipo_produto(
	codigo int not null	auto_increment,
    descricao varchar(30) not null,
    primary key (codigo)
);

create table produto(
	codigo int not null auto_increment primary key,
    descricao varchar(30) not null,
    preco decimal (8,2) not null,
    codigo_tipo_produto int not null,
    foreign key (codigo_tipo_produto) references tipo_produto(codigo)
);

insert into tipo_produto (descricao) values ('Computadores');
insert into tipo_produto (descricao) values ('Impressora');

insert into produto (descricao, preco, codigo_tipo_produto) values ('Desktop', '1200', 1);
insert into produto (descricao, preco, codigo_tipo_produto) values ('Laptop', '1800', 1);
insert into produto (descricao, preco, codigo_tipo_produto) values ('Impr. Jato de Tinta', '300', 2);
insert into produto (descricao, preco, codigo_tipo_produto) values ('Impr Lazer', '500', 2);



select * from tipo_produto;
select	* from produto;

select preco, produto.descricao, tipo_produto.descricao from tipo_produto, produto 
where tipo_produto.codigo=produto.codigo_tipo_produto;

select p.codigo as 'Código', p.descricao as 'Descrição', p.preco as pre, p.codigo_tipo_produto as ctp from produto as p;

# DML

-- Insert

insert into produto (descricao, preco, codigo_tipo_produto) values ('Notebook', '1500', 1);
insert into produto values (null,'MacBook Air', '5200', 1);
insert into produto values (null,'MacBook Pro', '7300', 3);

insert into tipo_produto values (null, 'Apple');

-- Update atualizar dados na tabela

update produto set codigo_tipo_produto = 3 where codigo = 6;
update produto set descricao = 'Impressora Lazer', preco = 700 where codigo = 4;
update produto set descricao = 'Impressora Jato de Tinta' where codigo = 3;
 
select * from tipo_produto;
select	* from produto;

-- Delete

delete from produto where codigo = 4;




