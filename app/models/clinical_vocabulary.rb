class ClinicalVocabulary < ActiveRecord::Base
  #Adjusts for rails naming conventions using AR method
  self.table_name = "KnowledgeBase.dbo.v_ClinicalVocabularies"
  #Scope to create a by_term endpoint
  #http://localhost:3000/clinical_vocabularies/by_term?Term=diabetes%20mellitus
  scope :by_term, -> (term, source_language, output_language) { self.get_problem(term, source_language, output_language)}
  #Method to implement custom stored procedure
  def self.get_problem(term, source_language, output_language)
    self.execute_procedure("sp_GetProblem", term, source_language, output_language)
  end
end
