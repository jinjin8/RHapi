class ChartsController < ApplicationController

  def index
    chart = Chart.chart(params[:domain], params[:record_id], params[:patient_id],params[:physician_id], params[:clinic_id], params[:provenance_id], params[:sort_field], params[:sort_order], params[:row_offset], params[:rows_in_subset], params[:input_language], params[:output_language])
    render json: chart
  end

  def show
    chart = Chart.find(params[:id])
    render json: chart
  end

  def chart
    chart = Chart.chart(params[:physician_idomain], params[:record_id], params[:patient_id],params[:d], params[:clinic_id], params[:provenance_id], params[:sort_field], params[:sort_order], params[:row_offset], params[:rows_in_subset], params[:input_language],params[:onput_language])
    render json: chart
  end

  # def chart
  #   chart = Chart.chart('ProblemLists', 1, 2, 3, 4, 5, 'Problem', 'ASC', 0, 20, 'ENG', 'ENG')
  #   render json: chart
  # end
end
