require 'rails_helper'

describe 'the view and add day process' do

  it 'allows a factory to create days for test usage' do
    day = FactoryGirl.create(:day)
    visit root_url
    click_link day.date
    expect(page).to have_content(day.date)
  end

  it 'takes you to a page where you can add a day to the list' do
    visit days_path
    click_link 'Log a Day'
    expect(page).to have_content 'Log a Day'
  end

  it 'takes you to a page where you can add a day to the list' do
    visit days_path
    click_link 'Log a Day'
    fill_in 'Date', :with => 'Saturday'
    fill_in 'Datefield', :with => '03/24/1985'
    click_on 'Create Day'
    expect(page).to have_content 'Saturday'
  end

  it 'takes you back from the add page to the index' do
    visit days_path
    click_link 'Log a Day'
    click_link 'Back'
    expect(page).to have_content 'Days'
  end

  it 'takes you to a page where you can add a day to the list' do
    visit days_path
    click_link 'Log a Day'
    fill_in 'Date', :with => 'Friday'
    fill_in 'Datefield', :with => '03/24/1985'
    click_on 'Create Day'
    click_link 'Friday'
    expect(page).to have_content 'Friday'
  end
end
