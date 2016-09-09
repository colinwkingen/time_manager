require 'rails_helper'

describe Hour do
  it { should validate_presence_of :activity }
  it { should belong_to :day }
end
