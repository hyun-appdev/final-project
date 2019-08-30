# == Schema Information
#
# Table name: company_products
#
#  id         :integer          not null, primary key
#  product_id :integer
#  company_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class CompanyProduct < ApplicationRecord
    
    belongs_to :product, :required => false
    belongs_to :company

end
