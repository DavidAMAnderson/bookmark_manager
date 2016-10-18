require 'spec_helper'

feature 'adding tags to new links' do
  scenario 'adding a tag within the add link form' do
    visit '/links/new'
    fill_in('Title', with: 'Amazon')
    fill_in('URL', with: 'http://amazon.co.uk')
    fill_in('Tags', with: 'Shopping')
    click_button 'Add Bookmark'

    expect(current_path).to eq '/links'

    within 'ul#links' do
      expect(page).to have_content 'Shopping'
    end
  end
end
