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
  
end
