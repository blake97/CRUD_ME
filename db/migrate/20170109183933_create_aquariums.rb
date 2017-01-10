class CreateAquariums < ActiveRecord::Migration
  def change
    create_table :aquariums do |t|
      t.references :user, null: false
      t.string :salinity, null: false
      t.string :lighting, null: false
      t.integer :capacity, null: false

      t.timestamps
    end
  end
end
