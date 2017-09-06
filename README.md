# RHapi API

#### _Jin Camou, Susha Dore, Ben Williams_

## Description
An API that returns stored procedures from Recentia Health database.

## Installation
* `$ git clone https://git-codecommit.us-west-2.amazonaws.com/v1/repos/RHapi`
* `$ cd RHapi`

## Development server
Create a .env file in the root directory and set these variables to the correct values in that file.
HIDDEN_USERNAME=
HIDDEN_PASSWORD=  
HIDDEN_HOST=

Run `rails s` for a dev server. 

## Paths
* Get Problem: http://localhost:5000/problems?term=asthma&source_lang=ENG&output_lang=ENG
Replace "asthma" and "ENG" with the desired values to customize your search. If the term or language is not available an empty array will be returned.
* Get Chart:
http://localhost:5000/charts?a=ProblemLists&b=1
Replace "ProblemsList" with desired domain and "1" with corresponding RecordID. These are the minimum parameters to get a response. If the record does not exist an empty array will be returned. The following parameters with corresponding variable names are also available:
  * a=Domain
  * b=RecordID
  * c=PatientID
  * d=PhysicianID
  * e=ClinicID,
  * f=ProvenanceID
  * g=SortField
  * h=SortOrder
  * i=RowOffset
  * j=RowsInSubset
  * k=InputLanguage
  * l=OutputLanguage

## Technologies Used
* [Ruby](https://www.ruby-lang.org/en/downloads/)
* [Rails](http://rubyonrails.org/)
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
Copyright (c) 2017 Jin Camou, Susha Dore, Ben Williams
```
