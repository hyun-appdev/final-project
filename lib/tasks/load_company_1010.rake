require "csv"

namespace :load_company_1010 do
  desc "TODO"
  task company: :environment do
    csv_text = File.read(Rails.root.join("lib", "csvs", "company_20191010.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
      r = Company.new
      r.id = row["id"]
      r.name = row["company_name"]
      r.save
      puts "#{r.id}, #{r.name}  saved"
    end
  puts "There are now #{Company.count} rows in the table"
  end
end
