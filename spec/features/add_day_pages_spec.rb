require 'rails_helper'
require 'devise'

describe 'the view and add day process' do
  before do
    user = FactoryGirl.create(:user, email: "mail@mail.mail")
    day = FactoryGirl.create(:day, user_id: user.id, datefield: Date.new)
    activity = FactoryGirl.create(:activity, day_id: day.id)
    login_as(user, scope: :user, run_callbacks: false)
  end

  it 'takes you to a page where you can add a day to the list' do
    visit days_path
    click_link 'Log a Day'
    expect(page).to have_content 'Log a Day'
  end

  it 'takes you to a page where you can add a specific date to the list' do
    visit days_path
    click_link 'Log a Day'
    click_on 'Create Day'
    expect(page).to have_content 'Monday'
    Warden.test_reset!
  end

  it 'takes you back from the add page to the index' do
    visit days_path
    click_link 'Log a Day'
    click_link 'Back'
    expect(page).to have_content 'Your Dashboard'
  end

  it 'takes you to a page where you can add a day to the list' do
    visit days_path
    click_link 'Log a Day'
    click_on 'Create Day'
    click_link 'Monday'
    expect(page).to have_content 'Monday'
    Warden.test_reset!
  end
end
