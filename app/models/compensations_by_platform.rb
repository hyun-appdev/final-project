# == Schema Information
#
# Table name: compensations_by_platforms
#
#  id                  :integer          not null, primary key
#  compensation_amount :float
#  review_id           :integer
#  compensated         :boolean
#  notes               :text
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class CompensationsByPlatform < ApplicationRecord
  
  belongs_to :review

end
