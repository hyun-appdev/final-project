class AddProductNameModelNameNumToProduct < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :model_number, :string
  end
end
