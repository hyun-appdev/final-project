# == Schema Information
#
# Table name: vote_comments
#
#  id         :integer          not null, primary key
#  voter_id   :integer
#  comment_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class VoteComment < ApplicationRecord
  
  belongs_to :voter, :class_name => "User"
  
  belongs_to :comment
  
end
