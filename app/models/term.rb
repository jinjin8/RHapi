class Term < ActiveRecord::Base
  self.table_name = "KnowledgeBase.dbo.Terms"
  scope :get_problem, -> { sp_GetProblem 'thyroiditis', 'ENG'}
end
