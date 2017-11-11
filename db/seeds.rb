# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Seeding Data ..."

# Helper functions
def open_asset(file_name)
  File.open(Rails.root.join('db', 'seed_assets', file_name))
end

# Only run on development (local) instances not on production, etc.
unless Rails.env.development?
  puts "Development seeds only (for now)!"
  exit 0
end

# Let's do this ...

## CATEGORIES

puts "Finding or Creating Categories ..."

cat1 = Category.find_or_create_by! name: 'Apparel'
cat2 = Category.find_or_create_by! name: 'Electronics'
cat3 = Category.find_or_create_by! name: 'Furniture'

## PRODUCTS

puts "Re-creating Products ..."

Product.destroy_all

cat1.products.create!({
  name:  'Men\'s Classy shirt',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('apparel1.jpg'),
  quantity: 10,
  price: 64.99
})

cat1.products.create!({
  name:  'Women\'s Zebra pants',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('apparel2.jpg'),
  quantity: 18,
  price: 124.99
})

cat1.products.create!({
  name:  'Hipster Hat',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('apparel3.jpg'),
  quantity: 4,
  price: 34.49
})

cat1.products.create!({
  name:  'Hipster Socks',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('apparel4.jpg'),
  quantity: 8,
  price: 25.00
})

cat1.products.create!({
  name:  'Russian Spy Shoes',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('apparel5.jpg'),
  quantity: 8,
  price: 1_225.00
})

cat1.products.create!({
  name:  'Human Feet Shoes',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('apparel6.jpg'),
  quantity: 82,
  price: 224.50
})


cat2.products.create!({
  name:  'Modern Skateboards',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('electronics1.jpg'),
  quantity: 40,
  price: 164.49
})

cat2.products.create!({
  name:  'Hotdog Slicer',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('electronics2.jpg'),
  quantity: 3,
  price: 26.00
})

cat2.products.create!({
  name:  'World\'s Largest Smartwatch',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('electronics3.jpg'),
  quantity: 32,
  price: 2_026.29
})

cat3.products.create!({
  name:  'Optimal Sleeping Bed',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('furniture1.jpg'),
  quantity: 320,
  price: 3_052.00
})

cat3.products.create!({
  name:  'Electric Chair',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('furniture2.jpg'),
  quantity: 2,
  price: 987.65
})

cat3.products.create!({
  name:  'Red Bookshelf',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('furniture3.jpg'),
  quantity: 0,
  price: 2_483.75
})

puts "Creating Reviews"

rev1 = Product.find_by(:id => 1)
rev2 = Product.find_by(:id => 2)
rev3 = Product.find_by(:id => 3)
rev4 = Product.find_by(:id => 4)
rev5 = Product.find_by(:id => 5)
rev6 = Product.find_by(:id => 6)
rev7 = Product.find_by(:id => 7)
rev8 = Product.find_by(:id => 8)
rev9 = Product.find_by(:id => 9)
rev10 = Product.find_by(:id => 10)
rev11 = Product.find_by(:id => 11)
rev12 = Product.find_by(:id => 12)
user = [1,2,3,4,5,6,7,8,9,10].sample
r = [1,2,3,4,5].sample


  rev1.reviews.create!({
    user_id: 1,
    description: Faker::Hipster.paragraph(4),
    rating: r
  })

  user = [1,2,3,4,5,6,7,8,9,10].sample
  r = [1,2,3,4,5].sample
  rev2.reviews.create!({
    user_id: 1,
    description: Faker::Hipster.paragraph(4),
    rating: r
  })

  user = [1,2,3,4,5,6,7,8,9,10].sample
  r = [1,2,3,4,5].sample
  rev3.reviews.create!({
    user_id: 1,
    description: Faker::Hipster.paragraph(4),
    rating: r
  })

  user = [1,2,3,4,5,6,7,8,9,10].sample
  r = [1,2,3,4,5].sample
  rev4.reviews.create!({
    user_id: 1,
    description: Faker::Hipster.paragraph(4),
    rating: r
  })

  user = [1,2,3,4,5,6,7,8,9,10].sample
  r = [1,2,3,4,5].sample
  rev5.reviews.create!({
    user_id: 1,
    description: Faker::Hipster.paragraph(4),
    rating: r
  })

  user = [1,2,3,4,5,6,7,8,9,10].sample
  r = [1,2,3,4,5].sample
  rev6.reviews.create!({
    user_id: 1,
    description: Faker::Hipster.paragraph(4),
    rating: r
  })

  user = [1,2,3,4,5,6,7,8,9,10].sample
  r = [1,2,3,4,5].sample
  rev7.reviews.create!({
    user_id: 1,
    description: Faker::Hipster.paragraph(4),
    rating: r
  })

  user = [1,2,3,4,5,6,7,8,9,10].sample
  r = [1,2,3,4,5].sample
  rev8.reviews.create!({
    user_id: 1,
    description: Faker::Hipster.paragraph(4),
    rating: r
  })

  user = [1,2,3,4,5,6,7,8,9,10].sample
  r = [1,2,3,4,5].sample
  rev9.reviews.create!({
    user_id: 1,
    description: Faker::Hipster.paragraph(4),
    rating: r
  })

  user = [1,2,3,4,5,6,7,8,9,10].sample
  r = [1,2,3,4,5].sample
  rev10.reviews.create!({
    user_id: 1,
    description: Faker::Hipster.paragraph(4),
    rating: r
  })

  user = [1,2,3,4,5,6,7,8,9,10].sample
  r = [1,2,3,4,5].sample
  rev11.reviews.create!({
    user_id: 1,
    description: Faker::Hipster.paragraph(4),
    rating: r
  })

  user = [1,2,3,4,5,6,7,8,9,10].sample
  r = [1,2,3,4,5].sample
  rev12.reviews.create!({
    user_id: 1,
    description: Faker::Hipster.paragraph(4),
    rating: r
  })

puts "DONE!"
