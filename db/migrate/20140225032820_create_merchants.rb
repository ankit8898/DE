class CreateMerchants < ActiveRecord::Migration
  def change
    create_table :merchants do |t|
      t.string :name
      t.text :address

      t.timestamps
    end
    add_index :merchants,:name
    add_index :merchants,:address
  end
end
