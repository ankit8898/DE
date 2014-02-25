require 'spec_helper'

describe DataEngineering::Seeder do 
    
    let(:file) {"#{Rails.root}/spec/fixtures/files/test_data.tab"}
    let(:uploader) {DataEngineering::Uploader.new(file)}
    let(:parsed_file) {uploader.parsed_file}

    describe "Seeder" do 

		it "should insert the data  in DB" do 
			DataEngineering::Seeder.new(parsed_file).insert
			expect(Item).to have(3).items
			expect(Merchant).to have(3).items
			expect(Purchaser).to have(3).items
			expect(Sale).to have(4).items
		end
	end
end