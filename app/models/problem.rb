class Problem < ActiveRecord::Base
  #Circumvent Rails naming convention using ActiveRecord function.
  table_name = "Knowledgebase"
  #Scope to implement custom stored procedure using activerecord-sqlserver-adapter function. Parameter names are consistent with Rails naming conventions.
  scope :problem, -> (term, input_language, output_language) { execute_procedure("sp_GetProblem", term, input_language, output_language)}
end
