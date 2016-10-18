require 'spec_helper'

feature 'adding tags to new links' do
  scenario 'adding a tag within the add link form' do
    visit '/links/new'
    fill_in('title', with: 'Amazon')
    fill_in('url', with: 'http://amazon.co.uk')
    fill_in('tags', with: 'Shopping')
    click_button 'Add Bookmark'

    expect(current_path).to eq '/links'

    link = Link.first
    expect(link.tags.map(&:name)).to include('Shopping')
  end
end
