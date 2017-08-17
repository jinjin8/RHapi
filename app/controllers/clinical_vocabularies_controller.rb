class ClinicalVocabulariesController < ApplicationController
  def index
    clinical_vocabulary = ClinicalVocabulary.first
    render json: clinical_vocabulary
  end
end
