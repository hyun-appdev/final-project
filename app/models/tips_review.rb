# == Schema Information
#
# Table name: tips_reviews
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  review_id  :integer
#  amount     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class TipsReview < ApplicationRecord
  
  belongs_to :review
  
  belongs_to :user
  
end
