def add_links
  Link.create(title: 'Amazon', url: 'www.amazon.com', tags: [Tag.first_or_create(name: 'shopping')])
  Link.create(title: 'Smyths Toys', url: 'www.smythstoys.com', tags: [Tag.first_or_create(name: 'bubbles')])
  Link.create(title: 'Power Puff Girls', url: 'www.ppg.com', tags: [Tag.first_or_create(name: 'bubbles')])
  Link.create(title: 'Google', url: 'www.google.com', tags: [Tag.first_or_create(name: 'search')])
  Link.create(title: 'Yahoo', url: 'www.yahoo.com', tags: [Tag.first_or_create(name: 'search')])
  Link.create(title: 'Makers Academy', url: 'www.makersacademy.com', tags: [Tag.first_or_create(name: 'bootcamp')])
end
