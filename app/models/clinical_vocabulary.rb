class ClinicalVocabulary < ActiveRecord::Base
  #Adjusts for rails naming conventions using AR method
  self.table_name = "KnowledgeBase.dbo.ClinicalVocabularies"
end
