require 'rails_helper'
require 'devise'

describe 'the delete day process' do
  it 'allows a user to delete a day from the saves set' do
    user = FactoryGirl.create(:user, email: "mail@mail.mail")
    day = FactoryGirl.create(:day, user_id: user.id, datefield: Date.new)
    activity = FactoryGirl.create(:activity, day_id: day.id)
    login_as(user, :scope => :user, run_callbacks: false)
    visit days_path
    click_link Day.first.weekday
    click_link 'Delete'
    expect(page).to_not have_content('Monday')
  end
end
