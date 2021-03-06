# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Added by Refinery CMS Pages extension
Refinery::Pages::Engine.load_seed

# Added by Refinery CMS Courses extension
Refinery::Courses::Engine.load_seed

# Added by Refinery CMS Books extension
Refinery::Books::Engine.load_seed

# Added by Refinery CMS Videos extension
Refinery::Videos::Engine.load_seed
