require 'rails_helper'

describe Activity do
  it { should validate_presence_of :color }
  it { should belong_to :day }
end
