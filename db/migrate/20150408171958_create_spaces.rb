class CreateSpaces < ActiveRecord::Migration
  def change
    create_table :spaces do |t|
      t.string :name
      t.string :code
      t.string :building
      t.string :address
      t.decimal :lat
      t.decimal :lng
      t.timestamps
    end
  end
end
