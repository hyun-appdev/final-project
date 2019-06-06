require "csv"

namespace :load_csv do
  desc "TODO"
  task reviews: :environment do
    csv_text = File.read(Rails.root.join("lib", "csvs", "reviews.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
      r = Review.new
      r.id = row["id"]
      r.compensation_id = row["compensation_id"]
      r.review_content = row["review_content"]
      r.product_id = row["product_id"]
      r.ratings = row["ratings"]
      r.reviewer_id = row["reviewer_id"]
      r.created_at = row["created_at"]
      r.save
      puts "#{r.id} saved"
    end
  puts "There are now xxx rows in the transactions table"
    
  end

end
