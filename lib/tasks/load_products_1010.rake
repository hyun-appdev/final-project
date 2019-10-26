require "csv"

namespace :load_products_1010 do
  desc "TODO"
  task product: :environment do
    csv_text = File.read(Rails.root.join("lib", "csvs", "product_20191010_1.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
      r = Product.new
      r.product_name = row["product"]
      r.company_id = row["company_id"]
      r.modelname = row["modelname"]
      r.model_number = row["model_number"]
      r.category = row["category"]
      r.save
      puts "#{r.id}, #{r.product_name}  saved"
    end
  puts "There are now #{Product.count} rows in the table"
  end

end
