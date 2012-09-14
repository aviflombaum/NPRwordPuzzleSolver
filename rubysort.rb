require 'csv'

new_array1 = []

CSV.foreach("drugcapital.csv") do |word|
word = word.to_s	
original = word
word = word.downcase
word = word.split("")
word = word.sort
word = word.map { |i| i.to_s }.join("")
word += "\t"*3 + original
new_array1.push(word)
new_array1 = new_array1.sort
end

puts new_array1