require 'rails_helper'

describe "get by term route", :type => :request do
  clinical_vocabulary = FactoryGirl.create(:clinical_vocabulary)

  it 'returns successfull route response' do
    get "/clinical_vocabulary/by_term?term=#{clinical_vocabulary.term}&#{clinical_vocabulary.source_lang}&#{clinical_vocabulary.output_lang}"
    expect(response).to have_http_status(200)
  end
end
