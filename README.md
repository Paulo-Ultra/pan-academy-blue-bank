# BancoPan_GamaAulas_Projeto Final
<p align="center">
  <a href="https://bancopan.corporate.gama.academy/" target="_blank">
    <img align="center" width="300" src="https://github.com/Paulo-Ultra/Banco_Pan_Training/blob/main/Imagem%20Banco%20Pan.png" style="max-width:100%;">
     </a>
</p>



<h3 align="center">
PAN ACADEMY É UM PROGRAMA DE FORMAÇÃO À ESPECIALIZAÇÃO EM <i>CLOUD</i> COM JAVA
</h3>



## ⚙️ Programa 

O programa dispõe de uma grade de estudos de cerca 390 horas de conteúdo, e é estruturado em 10 semanas de treinamento. Contendo aulas gravadas e também ao vivo, porém as aulas e
mentorias  foram assistidas nos horários pré determinados. 

* [Ementa Pan Academy](https://github.com/Paulo-Ultra/Banco_Pan_Training/blob/main/Ementa/%5BEmenta%5D%20Pan%20Academy%20-%20Java%20e%20AWS%20(Recupera%C3%A7%C3%A3o%20Autom%C3%A1tica).pdf)

 E o fechamento com um projeto final conforme o seguinte documento: 

* [Desafio Final - Projeto Blue Bank](https://github.com/Paulo-Ultra/Banco_Pan_Training/blob/main/Desafio%20final%20-%20BlueBank.docx.pdf)



## ⚙️ Projeto Final / Repositório 

- [Repositório do Projeto](https://github.com/ramondomiingos/pan-academy-blue-bank)

  

## ⚙️ Alunos participantes / Github

- [Brenda Pereira Ornelas](https://github.com/Brenda-pereira)

- [Iasmin Corrêa Araújo](https://github.com/iasminaraujoc)

- [Paulo Ricardo Freire Ultra](https://github.com/Paulo-Ultra)

- [Ramon Domingos Duarte Oliveira](https://github.com/ramondomiingos)

- [William Silva de Jesus](https://github.com/williamjesusdev)



## ⚙️ Instalação 

* [JDK 11: Para executar o Projeto](https://www.oracle.com/java/technologies/downloads/#java11)

* [Maven 3.8.3: Para executar build do Projeto](https://maven.apache.org/download.cgi)

## 🌐 Endpoints
📄  As urls interativas, construídas através do [Swagger](https://swagger.io/tools/swagger-ui/), pode ser acessadas no link:
[link da documentacao](ink da documentacao)

| Método | URL     | Finalidade       |   
|--------|---------|------------------|
| POST   | /accounts | Criar um usuário |   
| GET    |/accounts/{id}| Detalhar uma conta|   
| DELETE | /accounts/{id}| Desativar uma conta | 


## 📁 Diretórios e arquivos
```
.
├── Dockerfile
├── HELP.md
├── README.md
├── blue-bank.iml
├── docker-compose.yaml
├── mvnw
├── mvnw.cmd
├── pom.xml
├── src
│   ├── main
│   │   ├── java
│   │   │   └── com
│   │   │       └── panacademy
│   │   │           └── squad7
│   │   │               └── bluebank
│   │   │                   ├── BlueBankApplication.java
│   │   │                   ├── configs
│   │   │                   │   └── OpenApiConfig.java
│   │   │                   ├── domain
│   │   │                   │   ├── enums
│   │   │                   │   │   ├── AccountType.java
│   │   │                   │   │   ├── ClientType.java
│   │   │                   │   │   ├── RoleType.java
│   │   │                   │   │   ├── StatusType.java
│   │   │                   │   │   └── TransactionTypes.java
│   │   │                   │   ├── models
│   │   │                   │   │   ├── Account.java
│   │   │                   │   │   ├── Address.java
│   │   │                   │   │   ├── AddressRepository.java
│   │   │                   │   │   ├── Client.java
│   │   │                   │   │   ├── Transaction.java
│   │   │                   │   │   ├── TransactionType.java
│   │   │                   │   │   └── User.java
│   │   │                   │   └── repositories
│   │   │                   │       ├── AccountsRepository.java
│   │   │                   │       ├── AddressesRepository.java
│   │   │                   │       ├── ClientsRepository.java
│   │   │                   │       ├── TransactionsRepository.java
│   │   │                   │       ├── TransactionsTypesRepository.java
│   │   │                   │       └── UsersRepository.java
│   │   │                   ├── exceptions
│   │   │                   │   ├── BlueBankRunTimeExceptionHandler.java
│   │   │                   │   ├── ContentNotFoundException.java
│   │   │                   │   ├── InvalidInputException.java
│   │   │                   │   └── dtos
│   │   │                   │       └── ApiExceptionsDTO.java
│   │   │                   ├── services
│   │   │                   │   ├── AccountsService.java
│   │   │                   │   ├── AddressesService.java
│   │   │                   │   ├── ClientsService.java
│   │   │                   │   ├── TransactionsService.java
│   │   │                   │   ├── TransactionsTypesService.java
│   │   │                   │   ├── UsersService.java
│   │   │                   │   └── impl
│   │   │                   │       ├── AccountsServiceImpl.java
│   │   │                   │       ├── AddressesServiceImpl.java
│   │   │                   │       ├── ClientsServiceImpl.java
│   │   │                   │       ├── TransactionsServiceImpl.java
│   │   │                   │       ├── TransactionsTypesServiceImpl.java
│   │   │                   │       └── UsersServiceImpl.java
│   │   │                   ├── shared
│   │   │                   │   ├── annotations
│   │   │                   │   │   └── CpfCnpj.java
│   │   │                   │   ├── converters
│   │   │                   │   │   ├── AccountConverter.java
│   │   │                   │   │   ├── AddressConverter.java
│   │   │                   │   │   ├── ClientConverter.java
│   │   │                   │   │   └── UserConverter.java
│   │   │                   │   └── validators
│   │   │                   │       └── CpfCnpjValidator.java
│   │   │                   └── web
│   │   │                       ├── controllers
│   │   │                       │   ├── AccountsController.java
│   │   │                       │   ├── AddressesController.java
│   │   │                       │   ├── ClientsController.java
│   │   │                       │   └── HomeController.java
│   │   │                       └── dtos
│   │   │                           ├── request
│   │   │                           │   ├── AccountRequest.java
│   │   │                           │   ├── AddressRequest.java
│   │   │                           │   └── ClientRequest.java
│   │   │                           └── response
│   │   │                               ├── AccountResponse.java
│   │   │                               ├── AddressResponse.java
│   │   │                               └── ClientResponse.java
│   │   └── resources
│   │       ├── application.properties
│   │       ├── db
│   │       │   └── migration
│   │       │       ├── V1__baseline_migration.sql
│   │       │       └── V2__fix_transactions_table.sql
│   │       ├── openapi.properties
│   │       ├── static
│   │       └── templates
│   └── test
│       ├── java
│       │   └── com
│       │       └── panacademy
│       │           └── squad7
│       │               └── bluebank
│       │                   └── BlueBankApplicationTests.java
│       └── resources
│           └── application.properties
```

