# == Schema Information
#
# Table name: comments
#
#  id           :integer          not null, primary key
#  review_id    :integer
#  commenter_id :integer
#  comment      :text
#  comment_vote :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Comment < ApplicationRecord
  
  belongs_to :review
  
  belongs_to :commenter, :class_name => "User"
  
  has_many :vote_comments, :dependent => :destroy
  
end
