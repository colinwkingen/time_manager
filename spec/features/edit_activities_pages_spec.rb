require 'rails_helper'
require 'devise'

describe 'the edit activity process' do

  # before do
  #   Warden.test_reset!
  #   day = FactoryGirl.create(:day)
  #   user = FactoryGirl.create(:user)
  #   login_as(user, :scope => :user, :run_callbacks => false)
  # end

  it 'allows a user to edit the set activity of an activity object' do

    user = FactoryGirl.create(:user)
    activity = FactoryGirl.create(:activity )
    tag = FactoryGirl.create(:tag)
    login_as(user, :scope => :user, :run_callbacks => false)

    visit days_path
    click_link Day.first.date
    click_link 'This Activity'
    expect(page).to have_content('Alter logged Day')
    Warden.test_reset!
  end
end
