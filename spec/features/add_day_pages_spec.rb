require 'rails_helper'
require 'devise'

describe 'the view and add day process' do
  before do
    user = FactoryGirl.create(:user, email: "mail@mail.mail")
    day = FactoryGirl.create(:day, user_id: user.id)
    activity = FactoryGirl.create(:activity, day_id: day.id)
    login_as(user, scope: :user, run_callbacks: false)
  end

  it 'takes you to a page where you can add a day to the list' do
    visit days_path
    click_link 'Log a Day'
    expect(page).to have_content 'Log a Day'
    # Warden.test_reset!
  end

  it 'takes you to a page where you can add a specific date to the list' do
    visit days_path
    click_link 'Log a Day'
    select 'Saturday', from:  'Date'
    fill_in 'Datefield', :with => '03/24/1985'
    click_on 'Create Day'
    expect(page).to have_content 'Saturday'
    # Warden.test_reset!
  end

  it 'takes you back from the add page to the index' do
    visit days_path
    click_link 'Log a Day'
    click_link 'Back'
    expect(page).to have_content 'Your Dashboard'
    # Warden.test_reset!
  end

  it 'takes you to a page where you can add a day to the list' do
    visit days_path
    click_link 'Log a Day'
    select 'Friday', from: 'Date'
    fill_in 'Datefield', with: '03/24/1985'
    click_on 'Create Day'
    click_link 'Friday'
    expect(page).to have_content 'Friday'
    # Warden.test_reset!
  end
end
