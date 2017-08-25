# RHapi API

#### _Jin Camou, Susha Dore, Ben Williams_

## Description

An API that returns stored procedures from KnowledgeBase dbo.

## Technologies Used
* [Ruby](https://www.ruby-lang.org/en/downloads/)
* [Rails](http://rubyonrails.org/)
* [PostgreSQL](https://www.postgresql.org/docs/9.2/static/app-psql.html)
* [Dbeaver](https://dbeaver.jkiss.org/)
* [Tiny TDS](https://github.com/rails-sqlhserver/tiny_tds)
* [ActiveRecord SQLServer Adapter](https://github.com/rails-sqlserver/activerecord-sqlserver-adapter)
* [kaminari](https://github.com/kaminari/kaminari)
* [AWS CodeCommit](https://aws.amazon.com/codecommit/)

## Installation
* `$ git clone https://git-codecommit.us-west-2.amazonaws.com/v1/repos/RHapi`
* `$ cd RHapi`

Create a .env file in the home directory with:
HIDDEN_USERNAME=jcamou
HIDDEN_PASSWORD=jcamou.2.718
HIDDEN_HOST=50.206.8.245


## Development server
Run `rails s` for a dev server. Navigate to `http://localhost:3000/`. The app will automatically reload if you change any of the source files.

## Paths
* Read: localhost:3000/clinical_vocabularies
* Search by term: http://localhost:3000/clinical_vocabularies/by_term?term=diabetes&source_lang=ENG&output_lang=ENG

## Known Bugs
* N/A

## License
*This software is licensed under MIT license.*

```
Copyright (c) 2017 Susha Dore, Jin Camou, Ben Williams
```
