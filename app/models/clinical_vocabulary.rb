class ClinicalVocabulary < ActiveRecord::Base
  #Adjusts for rails naming conventions using AR method
  self.table_name = "KnowledgeBase.dbo.v_ClinicalVocabularies"

  #Method to implement custom stored procedure
  def self.get_problem(term)
    self.execute_procedure("sp_GetProblem", (term), "ENG")
  end
  #Scope to create a by_term endpoint
  scope :by_term, -> (term) { self.get_problem(term)}
end
