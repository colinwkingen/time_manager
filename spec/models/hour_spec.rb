require 'rails_helper'

describe Activity do
  it { should validate_presence_of :activity }
  it { should belong_to :day }
end
