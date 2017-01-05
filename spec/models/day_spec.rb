require 'rails_helper'

describe Day do
  it { should validate_presence_of :datefield }
  it { should have_many :activities }
end
