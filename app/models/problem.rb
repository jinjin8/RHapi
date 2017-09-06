class Problem < ActiveRecord::Base
  #Scope to implement custom stored procedure using ActiveRecord execute_procedure function. Parameter names are consistent with Rails naming conventions. 
  scope :problem, -> (term, input_language, output_language) { execute_procedure("sp_GetProblem", term, input_language, output_language)}
end
