# Creating sample data for owners and their articles

Owner.create!({
  owner_name: 'Joe',
  articles_attributes: [
    { name: 'Article 1', price: 500, description: 'Sample description for Article 1' },
    { name: 'Article 2', price: 500, description: 'Sample description for Article 2' },
    { name: 'Article 3', price: 500, description: 'Sample description for Article 3' }
  ]
})

Owner.create!({
  owner_name: 'Matz',
  articles_attributes: [
    { name: 'Article 4', price: 500, description: 'Sample description for Article 4' },
    { name: 'Article 5', price: 500, description: 'Sample description for Article 5' },
    { name: 'Article 6', price: 500, description: 'Sample description for Article 6' }
  ]
})

Owner.create!({
  owner_name: 'Ken',
  articles_attributes: [
    { name: 'Article 7', price: 500, description: 'Sample description for Article 7' },
    { name: 'Article 8', price: 500, description: 'Sample description for Article 8' },
    { name: 'Article 9', price: 500, description: 'Sample description for Article 9' }
  ]
})
