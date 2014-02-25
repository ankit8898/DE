class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :price
      t.text :description

      t.timestamps
    end
    add_index :items,:price
    add_index :items,:description
  end
end
