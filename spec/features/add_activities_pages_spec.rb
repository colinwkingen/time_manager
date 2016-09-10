require 'rails_helper'

describe 'the add activity to day process' do

  it 'takes you to a page where you can add an activity to a day' do
    visit days_path
    click_link 'Log a Day'
    fill_in 'Date', :with => 'Thursday'
    click_on 'Create Day'
    click_link 'Thursday'
    expect(page).to have_content 'Thursday'
  end

  it 'takes you to a page where you can specify the activity to add' do
    visit days_path
    click_link 'Log a Day'
    fill_in 'Date', :with => 'Thursday'
    click_on 'Create Day'
    click_link 'Thursday'
    click_on 'Add Activity'
    expect(page).to have_content 'Choose an activity'
  end

  it 'takes you to a page where you can specify the activity to add' do
    visit days_path
    click_link 'Log a Day'
    fill_in 'Date', :with => 'Thursday'
    click_on 'Create Day'
    click_link 'Thursday'
    click_on 'Add Activity'
    fill_in 'Activity', :with => 'Baking Cupcakes'
    click_on 'Create Hour'
    expect(page).to have_content 'Baking Cupcakes'
  end

  it 'lets you delete a logged day from the main list' do
    visit days_path
    click_link 'Log a Day'
    fill_in 'Date', :with => 'Thursday'
    click_on 'Create Day'
    click_link 'Thursday'
    click_on 'Delete'
    expect(page).to have_content 'Days'
  end

end
