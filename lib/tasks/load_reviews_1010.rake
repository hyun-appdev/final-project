require "csv"

namespace :load_reviews_1010 do
  desc "TODO"
  task review: :environment do
    csv_text = File.read(Rails.root.join("lib", "csvs", "review_20191010.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
      r = Review.new
      r.compensation_id = 0
      r.review_content = row["review_content"]
      r.product_id = row["product_id"]
      r.ratings = row["ratings"]
      r.reviewer_id = 1
      r.save
      puts "#{r.id}, #{r.ratings}  saved"
    end
  puts "There are now #{Review.count} rows in the table"
  end

end
