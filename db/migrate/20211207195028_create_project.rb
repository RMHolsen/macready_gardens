class CreateProject < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :name 
      # Project name 
      t.string :imgsrc 
      # Project image, work on uploads later
      t.integer :sts_done 
      # User fill, stitches done 
      t.float :percentage_done 
      # User fill, percentage of project finished
      t.boolean :finished, default: false 
      # If percentage of project finished == 100 or user toggles? etc.
      t.date :start_date 
      # Autopop with datetime and then allow the user to change
      # Definitely look this up
      t.timestamps null: false 
      t.belongs_to :user 
    end
  end
end
