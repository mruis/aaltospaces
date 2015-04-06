class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
    	t.string :name
    	t.string :code
    	t.references :building
    	t.timestamps
    end
  end
end
