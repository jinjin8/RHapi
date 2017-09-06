class ChartsController < ApplicationController

  def index
    chart = Chart.chart(params[:domain], params[:patient_id], params[:physician_id], params[:sort_field], params[:sort_order], params[:row_offset], params[:rows_in_subset], params[:input_language], params[:output_language])
    render json: chart
  end
end
