# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
topic_list = [
  { name: 'The Latest'    },
  { name: 'Politics' },
  { name: 'Employment'     },
  { name: 'The Economy'    },
  { name: 'Education' },
  { name: 'Health' },
  { name: 'Criminal Justice' },
  { name: 'Immigration'   },
  { name: 'Civil Liberties/Rights' },
  { name: 'Safety/National Security' },
  { name: 'Tech' },
  { name: 'Environment' },
  { name: 'You' }
]

topic_list.each do |name, population|
  Topic.create( name: name)
end
