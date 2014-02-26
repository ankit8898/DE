# This Module is the core for Upload and the starting point of Upload.  The Primary Job of 
# this module is to parse the .tab file and server the other 2 modules which are 
# DataEngineering::Seeder and DataEngineering::GrossRevenueCalculator

# Usage:

# $ rc
# Loading development environment (Rails 4.0.3)
# 1.9.3-p448 :001 > obj = DataEngineering::Uploader.new("#{Rails.root}/public/dummy_data.tab")
# => #<DataEngineering::Uploader:0x007fd4de385d78 @file="/Users/ankitgupta/Documents/projects/work/data-engineering/public/dummy_data.tab"> 
# 1.9.3-p448 :003 > obj.perform


require 'csv'
module DataEngineering
	class Uploader

		def initialize(file)
 			@file = file
		end

		def perform
			DataEngineering::Seeder.new(parsed_file).insert
			DataEngineering::GrossRevenueCalculator.calculate
		end

		def parsed_file
			parsed = CSV.new(File.read(@file), :headers => true, col_sep: "\t",:header_converters => :symbol)
			parsed.to_a.map {|row| row.to_hash }
		end
	end

end