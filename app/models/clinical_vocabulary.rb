class ClinicalVocabulary < ActiveRecord::Base
  #Adjusts for rails naming conventions using AR method
  self.table_name = "KnowledgeBase.dbo.v_ClinicalVocabularies"
  #Method to implement custom stored procedure
  def self.procedure(input, language)
    self.execute_procedure("sp_GetProblem", (input), (language))
  end
end
