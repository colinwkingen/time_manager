require 'rails_helper'

describe Day do
  it { should validate_presence_of :date }
  it { should have_many :hours }
end
