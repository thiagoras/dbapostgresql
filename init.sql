 CREATE DATABASE "FRUTTALY_VENDAS"
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'pt_BR.utf8'
    LC_CTYPE = 'pt_BR.utf8'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;

    DROP TABLE IF EXISTS tabela_de_vendedores;

CREATE TABLE tabela_de_vendedores (
  MATRICULA varchar(5) NOT NULL,
  NOME varchar(100),
  PERCENTUAL_COMISSAO real,
  DATA_ADMISSAO date,
  DE_FERIAS boolean,
  BAIRRO varchar(50)
);

DROP TABLE IF EXISTS tabela_de_produtos;

CREATE TABLE tabela_de_produtos (
  CODIGO_DO_PRODUTO varchar(10) NOT NULL,
  NOME_DO_PRODUTO varchar(50),
  EMBALAGEM varchar(20),
  TAMANHO varchar(10),
  SABOR varchar(20),
  PRECO_DE_LISTA real NOT NULL
);

DROP TABLE IF EXISTS tabela_de_clientes;

CREATE TABLE tabela_de_clientes (
  CPF varchar(11) NOT NULL,
  NOME varchar(100),
  ENDERECO_1 varchar(150),
  ENDERECO_2 varchar(150),
  BAIRRO varchar(50),
  CIDADE varchar(50),
  ESTADO varchar(2),
  CEP varchar(8),
  DATA_DE_NASCIMENTO date,
  IDADE smallint,
  SEXO varchar(1),
  LIMITE_DE_CREDITO real,
  VOLUME_DE_COMPRA real,
  PRIMEIRA_COMPRA boolean
);

DROP TABLE IF EXISTS notas_fiscais;

CREATE TABLE notas_fiscais (
  CPF varchar(11) NOT NULL,
  MATRICULA varchar(5) NOT NULL,
  DATA_VENDA date,
  NUMERO serial PRIMARY KEY,
  IMPOSTO real NOT NULL
);

DROP TABLE IF EXISTS itens_notas_fiscais;

CREATE TABLE itens_notas_fiscais (
  NUMERO int NOT NULL,
  CODIGO_DO_PRODUTO varchar(10) NOT NULL,
  QUANTIDADE int NOT NULL,
  PRECO real NOT NULL
);
