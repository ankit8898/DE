require 'spec_helper'

describe DataEngineering::Uploader do 
    
    let(:file) {"#{Rails.root}/spec/fixtures/files/test_data.tab"}
    let(:uploader) {DataEngineering::Uploader.new(file)}
    let(:parsed_file) {uploader.parsed_file}

    describe "Parser" do 
		it "should have 4 items" do 
			expect(parsed_file).to have(4).items
		end

		it "should have fixed colums [purchaser name, item description, item price,	purchase count,	merchant address, merchant name]" do 
	      expect(parsed_file.first.keys).to match_array([:purchaser_name, :item_description, :item_price, :purchase_count, :merchant_address, :merchant_name])
		end
	end
end