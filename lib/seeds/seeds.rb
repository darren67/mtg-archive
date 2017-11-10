require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'mtg_csv_031117.csv'))
puts csv_text