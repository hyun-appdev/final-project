# == Schema Information
#
# Table name: companies
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Company < ApplicationRecord
    
    has_many :company_products, :dependent => :nullify
    
    def self.find_company_name_by_id(company_id)
        @company = Company.where({ :id => company_id }).first
        if @company.present?
            return @company.name 
        else 
            return "Company name"
        end
    end

end
