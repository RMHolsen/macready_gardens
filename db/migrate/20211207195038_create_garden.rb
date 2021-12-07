class CreateGarden < ActiveRecord::Migration[5.0]
  def change
    create_table :gardens do |t|
      t.string :name 
      t.belongs_to :user 
    end
  end
end
