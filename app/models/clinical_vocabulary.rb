class ClinicalVocabulary < ActiveRecord::Base
  #Adjusts for rails naming conventions using AR method
  self.table_name = "KnowledgeBase.dbo.ClinicalVocabularies"
  scope :by_term, -> (search) { where("Term like ?", "%#{search}%")}
end
