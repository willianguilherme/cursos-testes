## subir docker
docker-compose up --build -d

## entrar no docker
docker container exec -it webserver bash

## criar banco/subir banco
rails db:create
rails db:migrate

## rodar railss
rails s -b 0.0.0.0

## criar tabela e seus metodos
rails generate model Log message:string

## realmente cria a tabela
rails db:migrate

## desfaz a criação da tabela
rails db:roolback

## adicionara na tabela pessoas
http://localhost:3000/pessoa-post?nome=Guilherme&idade=30&salario=1400&endereco=ruaB&cidade=Sao%20Paulo
http://localhost:3000/pessoa-post?nome=Reis&idade=50&salario=1000&endereco=ruaB&cidade=Campinas
http://localhost:3000/pessoa-post?nome=Willian&idade=21&salario=5000&endereco=ruaA&cidade=Sao%20Paulo
http://localhost:3000/pessoa-post?nome=Souza&idade=40&salario=3500&endereco=ruaC&cidade=Tabo%C3%A3o


desenvolvimento, produção e teste
