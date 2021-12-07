# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'S'tar Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all 
Project.destroy_all 

user_one = User.create(username: 'lemon_badgeress', display_name: 'Olna')
user_two = User.create(username: 'kittydesade', display_name: 'Kitty Chandler')
user_three = User.create(username: 'lireavue', display_name: 'Anna')

user_one.projects.create(name: 'Alice in Blackwork', sts_done: 500)
user_one.projects.create(name: 'Mushrooms', sts_done: 332)
user_one.projects.create(name: 'Howl\'s Bedroom', sts_done: 456)

user_two.projects.create(name: 'Black and White Ravens', sts_done: 27)
user_two.projects.create(name: 'House Martell', sts_done: 1402)
user_two.projects.create(name: 'House Tyrell', sts_done: 1075)

user_three.projects.create(name: 'Barn Owl', sts_done: 15)
user_three.projects.create(name: 'Celtic Knotwork 1', sts_done: 278)
user_three.projects.create(name: 'Dragons', sts_done: 1745)

# OLD AND BUSTED
# User.create([
#   {username: 'lemon_badgeress', display_name: 'Olna'} ,
#   {username: 'kittydesade', display_name: 'Kitty Chandler'},
#   {username: 'lireavue', display_name: 'Anna'}
# ])

# Project.create([
#     {name: 'Black and White Ravens', sts_done: 27, user_id: 2},
#     {name: 'Alice in Blackwork', sts_done: 500, user_id: 1},
#     {name: 'House Martell', sts_done: 1402, user_id: 2},
#     {name: 'House Tyrell', sts_done: 1075, user_id: 2},
#     {name: 'Barn Owl', sts_done: 15, user_id: 3},
#     {name: 'Mushrooms', sts_done: 332, user_id: 1},
#     {name: 'Dragons', sts_done: 1745, user_id: 3},
#     {name: 'Howl\'s Bedroom', sts_done: 456, user_id: 1},
#     {name: 'Celtic Knotwork 1', sts_done: 278, user_id: 3}
# ])