class CreateOwners < ActiveRecord::Migration
  def change
    create_table :owners do |t|
      t.string :owner_name, null: false
      t.timestamps null: false
    end

    add_index :owners, :owner_name, unique: true
  end
end
