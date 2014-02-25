class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
 	  t.integer :purchase_count
 	  t.belongs_to :item
 	  t.belongs_to :merchant
 	  t.belongs_to :purchaser
      t.timestamps
    end
  end
end
