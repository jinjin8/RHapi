# RHapi API

An example of an API that returns custom stored procedures from Recentia Health database.

## Installation
* `$ git clone https://github.com/sushadore/RHapi`
* `$ cd RHapi`
* Open file with text editor.

## Paths
The following paths only function when attached to the database which is proprietary and not available for public use. The screen shots give examples of browser rendering.
For both paths if a required parameter is not listed or given a value or any of the records do not exist, an empty array will be returned.
* Problem: http://localhost:5000/problems?term=thyroiditis&input_language=ENG&output_language=ENG
![marshmallow](public/images/problem_ENG.png)
Replace "thyroiditis" and "ENG" with the desired values to customize search. Term, InputLanguage & OutputLanguage are required parameters.
![marshmallow](public/images/problem_CHI.png)
* Chart:
http://localhost:5000/charts?domain=ProblemLists&patient_id=1&physician_id=1
Replace "ProblemsList" & "1" with desired values which must match database values including capitalization to customize search. Domain, PatientID and PhysicianID are required parameters.
![marshmallow](public/images/chart.png)
The following parameters are also available with the stored procedure name equivalent.
  * domain = Domain
  * record_id = RecordID
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
* [Tiny TDS](https://github.com/rails-sqlhserver/tiny_tds)
* [ActiveRecord SQLServer Adapter](https://github.com/rails-sqlserver/activerecord-sqlserver-adapter)

#### Authors
Jin Camou, Susha Dore, Ben Williams
