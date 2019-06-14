class RemoveProductsModelNameToProduct < ActiveRecord::Migration[5.1]
  def change
    #remove_column :products, :model_name
    add_column :products, :modelname, :string
  end
end
