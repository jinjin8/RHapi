require 'rails_helper'

describe ClinicalVocabulary do
  it { should validate_presence_of :term }
  it { should validate_presence_of :source_lang }
  it { should validate_presence_of :output_lang }
end
