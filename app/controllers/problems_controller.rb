class ProblemsController < ApplicationController
  def index
    problem = Problem.problem(params[:term], params[:input_language], params[:output_language])
    render json: problem
  end
end
