class Chart < ActiveRecord::Base
  #Connection to second database
  self.establish_connection :other_development
  self.table_name = "sEMR.dbo"
  #Scope to implement custom stored procedure
  scope :chart, -> (a, b, c, d, e, f, g, h, i, j, k, l) {
  self.execute_procedure("sp_GetChart", a, b, c, d, e, f, g, h, i, j, k, l)}
end

#a=domain, b=record_id, c=patient_id, d=physician_id, e=clinic_id, f=provenance_id, g=sort_field, h=sort_order, i=row_offset, j=rows_in_subset, k=input_lang, l=output_lang
