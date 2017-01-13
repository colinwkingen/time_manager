require 'rails_helper'
require 'devise'

describe 'the add activity to day process' do

  before do
    user = FactoryGirl.create(:user, email: "mail@mail.mail")
    day = FactoryGirl.create(:day, user_id: user.id, datefield: Date.new)
    day.datefield = '03/24/1985'
    activity = FactoryGirl.create(:activity, day_id: day.id)
    login_as(user, scope: :user, run_callbacks: false)
  end

  it 'takes you to a page where you can add an activity to a day' do
    visit days_path
    click_link 'Log a Day'
    select '24', from: 'day_datefield_3i'
    select 'March', from: 'day_datefield_2i'
    select '2030', from: 'day_datefield_1i'
    click_on 'Create Day'
    click_link 'Sunday'
    expect(page).to have_content 'Sunday'
  end

  it 'takes you to a page where you can specify the activity to add' do
    visit days_path
    click_link 'Monday'
    click_on 'Add Activity'
    expect(page).to have_content 'Create a new activity for Monday.'

  end

  it 'takes you to the add activity page and lets you return without adding' do
    visit days_path
    click_link 'Monday'
    click_on 'Back'
    expect(page).to have_content 'Your Dashboard'
  end

  it 'takes you to a page where you can create an activity' do
    visit days_path
    click_link 'Monday'
    click_on 'Add Activity'
    fill_in 'Name', with: 'Reading'
    click_on 'Set Activity Name'
    expect(page).to have_content 'Reading'
  end

  it 'lets you delete a logged day from the main list' do
    visit days_path
    click_link 'Monday'
    click_on 'Delete'
    expect(page).to have_content 'Your Dashboard'
  end

  it 'takes you to a page where you can create an activity' do
    visit days_path
    click_link 'Monday'
    click_on 'Add Activity'
    fill_in 'Name', with: 'Sleeping'
    click_on 'Cancel'
    expect(page).to_not have_content 'Sleeping'
  end

end
