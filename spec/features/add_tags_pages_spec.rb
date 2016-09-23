require 'rails_helper'
require 'devise'

describe 'the add tag process' do

  before do
    Warden.test_reset!
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user, :run_callbacks => false)
  end

  it 'allows a user to edit the set activity of an activity object' do
    day  = FactoryGirl.create(:day)
    activity = FactoryGirl.create(:activity, :day_id => day.id)
    tag = FactoryGirl.create(:tag)
    visit days_path
    click_link 'Thursday'
    click_link 'This Activity'
    select "Baking Cupcakes", :from => 'Activity'
    click_on 'Add A Tag'
    expect(page).to have_content('Baking Cupcakes')
  end
end
