require 'rails_helper'

describe Problem do
  it { should validate_presence_of :term }
  it { should validate_presence_of :source_lang }
  it { should validate_presence_of :output_lang }
end
