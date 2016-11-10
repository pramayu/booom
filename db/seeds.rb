require 'csv'

# CSV.foreach(Rails.root.join("themecategories.csv"), headers: true) do |row|
# 	Category.create! do |category|
# 		category.id = row[0]
# 		category.name = row[1]
# 	end
# end

# CSV.foreach(Rails.root.join("subcategories.csv"), headers: true) do |row|
# 	Subcategory.create! do |subcategory|
# 		subcategory.id = row[0]
# 		subcategory.name = row[1]
# 	end
# end

# CSV.foreach(Rails.root.join("countries.csv"), headers: true) do |row|
#   Country.update do |country|
#     country.id = row[0]
#     country.name = row[1]
#     country.abbreviation = row[2]
#   end
# end

# CSV.foreach(Rails.root.join("nia.csv"), headers: true) do |row|
# 	Category.create! do |gh|
# 		gh.id = row[0]
# 		gh.name = row[1]
# 	end
# end
