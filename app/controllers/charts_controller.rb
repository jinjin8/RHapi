class ChartsController < ApplicationController
  def index
    chart = Chart.all
    render json: chart
  end

  def show
    chart = Chart.find(params[:id])
    render json: chart
  end

  def chart
    chart = Chart.chart('ProblemLists', 1, 2, 3, 4, 5, 'Problem', 'ASC', 0, 20, 'ENG', 'ENG')
    render json: chart
  end
end


# params[:'domain'], params[:record_id], params[:patient_id], params[:physician_id], params[:clinic_id], params[:provenance_id], params[:'sort_field'], params[:'sort_order'], params[:row_offset], params[:rows_in_subset], params[:'input_lang'], params[:'output_lang']
