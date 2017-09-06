class ChartsController < ApplicationController
  # def index
  #   chart = Chart.all
  #   render json: chart
  # end

  def index
    chart = Chart.chart(params[:a], params[:b], params[:c],params[:d], params[:e], params[:f], params[:g], params[:h], params[:i], params[:j],'ENG', 'ENG')
    render json: chart
  end

  def show
    chart = Chart.find(params[:id])
    render json: chart
  end

  def chart
    chart = Chart.chart(params[:a], params[:b], params[:c],params[:d], params[:e], params[:f], params[:g], params[:h], params[:i], params[:j],'ENG', 'ENG')
    render json: chart
  end

  # def chart
  #   chart = Chart.chart('ProblemLists', 1, 2, 3, 4, 5, 'Problem', 'ASC', 0, 20, 'ENG', 'ENG')
  #   render json: chart
  # end
end

#a=domain, b=record_id, c=patient_id, d=physician_id, e=clinic_id, f=provenance_id, g=sort_field, h=sort_order, i=row_offset, j=rows_in_subset, k=input_lang, l=output_lang
