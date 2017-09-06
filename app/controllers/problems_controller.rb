class ProblemsController < ApplicationController
  def index
    problem = Problem.problem(params[:term], params[:input_lang], params[:output_lang])
    render json: problem
  end

  def show
    problem = Problem.find(params[:id])
    render json: problem
  end

#Define function of route to communicate with the database and take a term, source language, and output language, returning all corresponding hits from database.

  def problem
    problem = Problem.problem(params[:term], params[:input_lang], params[:output_lang])
    render json: problem
  end
end
