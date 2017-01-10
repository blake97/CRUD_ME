class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :full_name, null: false
      t.string :username, null: false, unique: true
      t.string :email, null: false
      t.integer :age
      t.string :password_digest, null: false

      t.timestamps
    end
  end
end
