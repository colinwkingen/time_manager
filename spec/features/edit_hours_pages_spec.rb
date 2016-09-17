require 'rails_helper'
require 'devise'

describe 'the edit activity process' do

  before do
    Warden.test_reset!
    user = FactoryGirl.create(:user, :email => "mail@mail.mail")
    login_as(user, :scope => :user, :run_callbacks => false)
  end

  it 'allows a user to edit the set activity of an activity' do
    activity = FactoryGirl.create(:activity)
    visit root_url
    click_link Day.first.date
    click_link 'Edit'
    fill_in 'Activity', :with => 'Bake Brownies'
    click_on 'Update Activity'
    expect(page).to have_content('Bake Brownies')
  end
end
