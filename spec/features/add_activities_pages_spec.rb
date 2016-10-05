require 'rails_helper'
require 'devise'

describe 'the add activity to day process' do

  before do
    user = FactoryGirl.create(:user, email: "mail@mail.mail")
    day = FactoryGirl.create(:day, user_id: user.id)
    activity = FactoryGirl.create(:activity, day_id: day.id)
    login_as(user, scope: :user, run_callbacks: false)
  end

  it 'takes you to a page where you can add an activity to a day' do
    visit days_path
    click_link 'Log a Day'
    select 'Friday', from: 'Date'
    fill_in 'Datefield', with: '03/24/1985'
    click_on 'Create Day'
    click_link 'Friday'
    expect(page).to have_content 'Friday'

  end

  it 'takes you to a page where you can specify the activity to add' do
    visit days_path
    click_link 'Thursday'
    click_on 'Add Activity'
    expect(page).to have_content 'Tag this activity for Thursday'

  end

  it 'takes you to the add activity page and lets you return without adding' do
    visit days_path
    click_link 'Thursday'
    click_on 'Back'
    expect(page).to have_content 'Your Dashboard'
  end

  it 'takes you to a page where you can create an activity' do
    visit days_path
    click_link 'Thursday'
    click_on 'Add Activity'
    fill_in 'Name', with: 'Reading'
    click_on 'Set Activity Name'
    expect(page).to have_content 'Reading'

  end

  it 'lets you delete a logged day from the main list' do
    visit days_path
    click_link 'Thursday'
    click_on 'Delete'
    expect(page).to have_content 'Your Dashboard'

  end
end
