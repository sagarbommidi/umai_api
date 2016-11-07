class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :name
      t.decimal :price
      t.text :description
      t.references :owner
    end
  end
end
