class CreateGardenPlant < ActiveRecord::Migration[5.0]
  def change
    create_table :garden_plants do |t|
      t.belongs_to :garden 
      t.belongs_to :plant 
    end
  end
end
