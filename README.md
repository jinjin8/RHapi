# RHapi API

#### _By Jin Camou, Susha Dore, Ben Williams_

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

Run `$ rails s` for a dev server.

## Paths
For both paths if a required parameter is not listed or given a value or any of the records do not exist, an empty array will be returned.
* Get Problem: http://localhost:5000/problems?term=asthma&source_language=ENG&output_language=ENG
Replace "asthma" and "ENG" with the desired values to customize search.
* Get Chart:
http://localhost:5000/charts?domain=ProblemLists&patient_id=1&physician_id=1
Replace "ProblemsList" and "1" with desired values to customize search. These are the minimum parameters for the database query. The following parameters are also available and listed with the stored procedure equivalent.
  * domain = Domain
  * patient_id = PatientID
  * physician_id = PhysicianID
  * sort_field = SortField
  * sort_order = SortOrder
  * row_offset = RowOffset
  * rows_in_subset = RowsInSubset
  * input_language = InputLanguage
  * output_language = OutputLanguage

## Technologies Used
* [Ruby](https://www.ruby-lang.org/en/downloads/)
* [Rails](http://rubyonrails.org/)
* [Dbeaver](https://dbeaver.jkiss.org/)
* [Tiny TDS](https://github.com/rails-sqlhserver/tiny_tds)
* [ActiveRecord SQLServer Adapter](https://github.com/rails-sqlserver/activerecord-sqlserver-adapter)
* [AWS CodeCommit](https://aws.amazon.com/codecommit/)

## Known Bugs
* N/A
