require 'spec_helper'

describe DataEngineering::GrossRevenueCalculator do 
    
    let(:file) {"#{Rails.root}/spec/fixtures/files/test_data.tab"}
    let(:uploader) {DataEngineering::Uploader.new(file)}
    let(:parsed_file) {uploader.parsed_file}

    describe "Calculator" do 

		it "should calculate the Gross Revenue" do 
			DataEngineering::Seeder.new(parsed_file).insert
			expect(DataEngineering::GrossRevenueCalculator.calculate).to eq(95)
		end
	end
end