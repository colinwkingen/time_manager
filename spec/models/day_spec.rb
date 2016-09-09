require 'rails_helper'

describe List do
  it { should validate_presence_of :date }
  it { should have_many :tasks }
end
