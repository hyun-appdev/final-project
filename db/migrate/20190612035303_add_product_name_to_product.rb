class AddProductNameToProduct < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :product_name, :string
    
  end
end
