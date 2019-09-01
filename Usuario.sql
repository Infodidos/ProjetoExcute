create database formulario;
  use cadastro;

      create table cadastro(
        cod_cad int not null auto_increment primary key,
        nome varchar(50) not null,
        cpf int(11) not null,
        sexo varchar(1) not null,
        data_nasc date not null,
        ano_prova int(4) not null,
        email varchar(40) not null,
        senha varchar(20) not null
      );

      create table lgn(
        num_login int not null auto_increment primary key,
        email varchar(40) not null,
        senha varchar(20) not null,
        cod_cad int not null,
        constraint fk_cad_lgn foreign key (cod_cad)
        references cadastro(cod_cad)
      );
