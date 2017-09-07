class Chart < ActiveRecord::Base
  #Circumvent Rails naming convention using ActiveRecord function.
  table_name = "sEMR"
  #Connection to second database using ActiveRecord function, database name matches database name in database.yml file
  establish_connection :other_development
  #Scope to implement custom stored procedure using activerecord-sqlserver-adapter function. Parameter names are consistent with Rails naming conventions. 
  scope :chart, -> (domain, patient_id, physician_id, sort_field, sort_order, row_offset, rows_in_subset, input_language, output_language) {
  execute_procedure("sp_GetChart", domain, patient_id, physician_id, sort_field, sort_order, row_offset, rows_in_subset, input_language, output_language)}
end
