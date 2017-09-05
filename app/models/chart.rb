class Chart < ActiveRecord::Base

  establish_connection :other_development
  self.table_name = "sEMR"
  #Scope to implement custom stored procedure
  scope :chart, -> (domain, record_id, patient_id, physician_id, clinic_id, provenance_id, sort_field, sort_order, row_offset, rows_in_subset, input_lang, output_lang) {
  self.execute_procedure("sp_GetChart", domain, record_id, patient_id, physician_id, clinic_id, provenance_id, sort_field, sort_order, row_offset, rows_in_subset, input_lang, output_lang)}
end