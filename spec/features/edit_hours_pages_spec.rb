require 'rails_helper'
require 'devise'

describe 'the edit activity process' do

  before do
    Warden.test_reset!
    user = FactoryGirl.create(:user, :email => "mail@mail.mail")
    login_as(user, :scope => :user, :run_callbacks => false)
  end

  it 'allows a user to edit the set activity of an hour' do
    hour = FactoryGirl.create(:hour)
    visit root_url
    click_link Day.first.date
    click_link 'Edit'
    fill_in 'Activity', :with => 'Bake Brownies'
    click_on 'Update Hour'
    expect(page).to have_content('Bake Brownies')
  end
end
