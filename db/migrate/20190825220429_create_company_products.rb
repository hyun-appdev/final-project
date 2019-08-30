class CreateCompanyProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :company_products do |t|
      t.integer :product_id
      t.integer :company_id

      t.timestamps
    end
  end
end
