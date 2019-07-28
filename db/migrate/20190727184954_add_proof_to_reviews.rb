class AddProofToReviews < ActiveRecord::Migration[5.1]
  def change
    add_column :reviews, :proof, :string
  end
end
