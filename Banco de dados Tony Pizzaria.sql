create database Tony_Pizzaria;

use Tony_Pizzaria;

create table usuarios(
	id_usuario integer primary key,
    id_endereco integer,
    nome_usuario varchar(50),
    senha varchar(50),
    telefone numeric(11),
    cpf numeric(11),
    email varchar(50)
);

create table endereco(
	id_endereco integer primary key,
    rua varchar (50) not null,
    cidade varchar (50) not null,
    bairro varchar (50) not null,
    estado varchar(20) not null,
    cep numeric(8) not null
);

create table produtos(
	id_produtos integer primary key,
	id_categoria integer,
    nome varchar (50) not null,
	valor numeric (5) not null,
    descricao varchar (300) not null,
    avaliacao_pedido numeric (5) not null
);

create table pagamento(
	id_pagamento integer primary key,
    valor_total numeric,
    opcao_de_pagamento varchar(50)
);

create table comentarios(
	id_comentario integer primary key,
    id_usuario integer,
    comentarios varchar(200),
    avaliacao_pedido numeric(5) not null,
    data_do_comentario date
);

create table pedidos(
	id_pedidos integer primary key,
    data_pedidos date,
    valor_pedidos numeric
);