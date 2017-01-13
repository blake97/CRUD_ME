class CreateFishes < ActiveRecord::Migration
  def change
    create_table :fishes do |t|
    t.references :aquarium, null: false
    t.string :common_name, null: false
    t.string :zone, null: false
    t.integer :max_size, null: false
    t.string :aggression_level

    t.timestamps
    end
  end
end
