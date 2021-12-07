class CreatePlant < ActiveRecord::Migration[5.0]
  def change
    create_table :plants do |t|
      t.string :name 
      t.text :description 
      t.integer :stitch_count 
    end
  end
end
