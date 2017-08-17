class TermsController < ApplicationController
  def index
    term = Term.first
    render json: term
  end
end
