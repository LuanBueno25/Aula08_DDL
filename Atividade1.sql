# Atividade_1:
create database loja;

use loja;
create table vendedor(
	id_vendedor int primary key auto_increment,
    nome varchar(100),
    salarioFixo double,
    faixaComissao char(1)
);

use loja;
create table cliente(
	id_cliente int primary key auto_increment,
    nome varchar(100),
    logradouro varchar(100),
    numero varchar(6),
    complemento varchar(45),
    bairro varchar(50),
    cep varchar(15),
    cidade varchar(15),
    uf varchar(2)
);

use loja;
create table produto(
	id_produto int primary key auto_increment,
    decricao varchar(100),
    unidade int,
    valorUnitario double
);

use loja;
create table pedido(
	id_pedido int primary key auto_increment,
    constraint pedido_cliente foreign key(cliente_id) references cliente(id_cliente),
    constraint pedido_vendedor foreign key(vendedor_id) references vendedor(id_vendedor),
    prazoEntrega int
);

use loja;
create table itempedido(
	constraint pedido_produto foreign key(pedido_id) references pedido(id_pedido),
    constraint produto_pedido foreign key(produto_id) references produto(id_produto),
    quantidade int
);