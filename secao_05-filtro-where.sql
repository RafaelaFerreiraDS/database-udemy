create database secao_05;

use secao_05;

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

-- filtro com where
select * from produto where codigo> 2 and preco < 1000;

select * from tipo_produto;
select * from produto;