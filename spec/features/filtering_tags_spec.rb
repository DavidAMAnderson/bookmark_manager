require 'spec_helper'

feature 'filter by tag' do
  scenario 'filtering links by a tag' do
    add_links
    visit '/tags/bubbles'

    expect(page.status_code).to eq 200

    within 'ul#links' do
      expect(page).not_to have_content 'Amazon'
      expect(page).not_to have_content 'Makers Academy'
      expect(page).to have_content 'Power Puff Girls'
      expect(page).to have_content 'Smyths Toys'
    end
  end
end
