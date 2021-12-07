class CreateUser < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :username 
      t.string :display_name 
      t.string :email
      t.string :password_digest 
      t.text :profile 
      t.string :goal_one 
      t.string :goal_two 
      t.string :goal_three 
    end
  end
end
