class Problem < ActiveRecord::Base
  #Adjusts for rails naming conventions using AR method
  self.table_name = "KnowledgeBase"
  #Scope to implement custom stored procedure
  scope :problem, -> (term, input_language, output_language) { self.execute_procedure("sp_GetProblem", term, input_language, output_language)}
end
