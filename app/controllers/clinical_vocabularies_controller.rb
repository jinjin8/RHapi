class ClinicalVocabulariesController < ApplicationController
  def index
    term = ClinicalVocabulary.first
    render json: term
  end
end
