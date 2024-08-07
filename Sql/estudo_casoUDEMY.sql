create table aluno(
alun_id int not null auto_increment,
alun_nome varchar(250) not null,
alun_dataNasc date not null,
alun_endereco varchar(250) not null,
alun_cpf varchar(14),
primary key (alun_id)
);

describe aluno;
select * from aluno;