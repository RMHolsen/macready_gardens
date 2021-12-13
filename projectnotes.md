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
SMASHED: For whatever reason, having ApplicationController inherit from ActionController::API instead of ActionController::Base cut everything off from their proper routing/controllers/views, thereby kicking up no content errors. 
LIVE: What the hell is looking for favicon.ico. Make it go away.

## Notes 
General Menu Code, for future reference (after login methods are made)
<% if logged_in? == true %>
<h3>My Resources</h3>
<p><%= link_to "View My Projects", projects_path %><br>
<%= link_to "Create a Project", new_project_path %></p>
<p><%= link_to "Log Out", logout_path %></p>
<% else %>
<br>
<p><%= link_to "Log In", login_path %></p>
<p><%= link_to "Sign up", signup_path %></p>
<% end %>

## Requirements