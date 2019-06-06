# == Schema Information
#
# Table name: votes
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  review_id  :integer
#  upvote     :integer
#  downvote   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Vote < ApplicationRecord
  
  belongs_to :review
  
  belongs_to :user
  
end
