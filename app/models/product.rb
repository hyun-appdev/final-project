# == Schema Information
#
# Table name: products
#
#  id           :integer          not null, primary key
#  company_id   :integer
#  serial_no    :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  product_name :string
#  model_number :string
#  modelname    :string
#  category     :integer
#

class Product < ApplicationRecord
  
  has_many :reviews
  
  def self.find_product_name_by_product_id(product_id)
    @product = Product.where({ :id => product_id }).first
    return @product.product_name
  end
  
  def self.find_company_id_by_product_id(product_id)
    @product = Product.where({ :id => product_id }).first
    return @product.company_id
  end
      
end
