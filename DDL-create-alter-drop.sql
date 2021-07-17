create database secao_04_II;

use secao_04_II;

create table pessoa(
	id int not null auto_increment,
    nome varchar(100) not null,
    primary key (id)
);

insert into pessoa (nome) values('Rafaela');

select * from pessoa;

-- Alter

alter table pessoa add ano_nascimento int;
alter table pessoa add mes_nascimento int not null;

update pessoa set mes_nascimento = 8 where id = 1;

-- drop

drop table pessoa;
drop database secao_04_ii;