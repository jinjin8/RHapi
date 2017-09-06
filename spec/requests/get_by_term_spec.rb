require 'rails_helper'

describe "get by term route", :type => :request do
  problem = FactoryGirl.create(:problem)

  it 'returns successful route response' do
    get "/problem/by_term?term=#{problem.term}&#{problem.source_lang}&#{problem.output_lang}"
    expect(response).to have_https_status(200)
  end
end
