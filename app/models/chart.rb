class Chart < ActiveRecord::Base
  #Connection to second database, database name matches database name in database.yml file
  establish_connection :other_development
  #Scope to implement custom stored procedure using ActiveRecord execute_procedure function. Parameter names are consistent with Rails naming conventions. 
  scope :chart, -> (domain, patient_id, physician_id, sort_field, sort_order, row_offset, rows_in_subset, input_language, output_language) {
  execute_procedure("sp_GetChart", domain, patient_id, physician_id, sort_field, sort_order, row_offset, rows_in_subset, input_language, output_language)}
end
