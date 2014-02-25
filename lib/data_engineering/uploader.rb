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