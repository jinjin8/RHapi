class ClinicalVocabulariesController < ApplicationController
  def index
    clinical_vocabulary = ClinicalVocabulary.all.page params[:page]
    render json: clinical_vocabulary
  end

  def show
    clinical_vocabulary = ClinicalVocabulary.find(params[:id])
    render json: clinical_vocabulary
  end

  def by_term
    clinical_vocabulary = ClinicalVocabulary.by_term(params[:term], params[:source_lang], params[:output_lang])
    render json: clinical_vocabulary
  end
end
