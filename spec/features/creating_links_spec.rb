require 'spec_helper'

feature 'saving links' do
  scenario 'adding a link using a form' do
    visit '/links/new'
    fill_in('title', with: 'Google')
    fill_in('url', with: 'http://google.co.uk')
    click_button 'Add Bookmark'

    expect(current_path).to eq '/links'

    within 'ul#links' do
      expect(page).to have_content 'Google'
    end
  end
end
