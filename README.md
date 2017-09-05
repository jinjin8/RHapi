# RHapi API

#### _Jin Camou, Susha Dore, Ben Williams_

## Description
An API that returns stored procedures from KnowledgeBase dbo.

## Installation
* `$ git clone https://git-codecommit.us-west-2.amazonaws.com/v1/repos/RHapi`
* `$ cd RHapi`

## Development server
Create a .env file in the root directory. Set HIDDEN_USERNAME=, HIDDEN_PASSWORD=, and HIDDEN_HOST= to the correct values.

Run `rails s` for a dev server. Navigate to `http://localhost:5000/`. This will display the first 25 hits from the database.

## Paths
* Read: localhost:5000/clinical_vocabularies
* Get Problem: http://localhost:5000/clinical_vocabularies/problem?term=asthma&source_lang=ENG&output_lang=ENG
In this URL, replace "diabetes" and "ENG" with the desired values to customize your search.
* Get Chart:
http://localhost:5000/charts/chart
Returns 1 hard coded object  

## Technologies Used
* [Ruby](https://www.ruby-lang.org/en/downloads/)
* [Rails](http://rubyonrails.org/)
* [PostgreSQL](https://www.postgresql.org/docs/9.2/static/app-psql.html)
* [Dbeaver](https://dbeaver.jkiss.org/)
* [Tiny TDS](https://github.com/rails-sqlhserver/tiny_tds)
* [ActiveRecord SQLServer Adapter](https://github.com/rails-sqlserver/activerecord-sqlserver-adapter)
* [kaminari](https://github.com/kaminari/kaminari)
* [AWS CodeCommit](https://aws.amazon.com/codecommit/)

## Known Bugs
* N/A

## License
*This software is licensed under MIT license.*

```
Copyright (c) 2017 Susha Dore, Jin Camou, Ben Williams
```
