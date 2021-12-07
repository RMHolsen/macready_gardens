## To-Do
-- first, test your assumptions that the very basic architecture works as expected
-- look up timestamp/time-release programming to maybe allocate some stitches and then three days later, you have a plant (this will come in handy if recipes are a thing later)

## Stretch Goals 
-- add quests
-- add recipes to plants? that could make everything SUPER complicated so we're just doing this to start with

## Architecture
Users and Sessions
A Garden belongs_to a User
A Garden has_many Plants
A User has_many Projects
Project 
    t.string :name 
    t.integer :stitches 
    t.string :imgsrc 
    t.integer :sts_done ?
    t.belongs_to :user 

User
    t.string :username 
    t.string :email 
    t.string :password_digest 
    t.text :profile
    t.string :goal 
    
    user.total_stitches (map user.projects and add up all the sts_done)
    user.stitch_bank (user.total_stitches - user.allocated_stitches)
    user.allocated_stitches (something determined by user actions oy)

Garden
    t.string :name
    t.belongs_to :user 

Plant 
    t.string :name 
    t.string :description (text?)
    t.integer :stitch_count 

GardenPlants 
    t.belongs_to :garden
    t.belongs_to :plant 

A Garden has_many plants through gardenplants 
A Plant has_many gardens through gardenplants 
That way multiple people can have the same plants planted in their gardens oyyyy so complicated for a baby dev. 

## Bugs 

## Notes 

## Requirements