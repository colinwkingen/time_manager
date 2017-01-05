require 'rails_helper'
require 'devise'

describe 'the add user process' do
  it 'allows a user to sign up' do
    name = 'Test' + Random.new_seed.to_s
    visit days_path
    click_link 'Sign Up'
    fill_in 'Name', with: name
    fill_in 'Email', with: name + '@mail.com'
    fill_in 'Password', with: '123123'
    fill_in 'Password confirmation', with: '123123'
    click_on 'Sign up'
    expect(page).to have_content('Your Dashboard')
  end
end
