# == Schema Information
#
# Table name: reviews
#
#  id              :integer          not null, primary key
#  compensation_id :integer
#  review_content  :string
#  product_id      :integer
#  ratings         :integer
#  reviewer_id     :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  proof           :string
#


class Review < ApplicationRecord

  has_many :tips_reviews
  
  has_many :comments
  
  has_many :likes, :class_name => "Vote"
  
  has_one :compensations_by_platform
  
  belongs_to :reviewer, :class_name => "User"
  
  belongs_to :product, :required => false
  
  mount_uploader :proof, ProofUploader
  
  def count_votes
    votes = Vote.where({ :review_id => self.id})
    return votes.sum(:upvote) - votes.sum(:downvote)
  end
  
end
