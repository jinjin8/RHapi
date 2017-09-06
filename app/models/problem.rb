class Problem < ActiveRecord::Base
  #Adjusts for rails naming conventions using AR method
  self.table_name = "KnowledgeBase.dbo.v_ClinicalVocabularies"
  #Scope to implement custom stored procedure
  scope :problem, -> (term, input_lang, output_lang) { self.execute_procedure("sp_GetProblem", term, input_lang, output_lang)}
end
