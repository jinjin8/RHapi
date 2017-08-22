class ClinicalVocabulary < ActiveRecord::Base
  #Adjusts for rails naming conventions using AR method
  self.table_name = "KnowledgeBase.dbo.v_ClinicalVocabularies"
  #Scope to implement custom stored procedure
  scope :by_term, -> (term, source_lang, output_lang) { self.execute_procedure("sp_GetProblem", term, source_lang, output_lang)}
end
