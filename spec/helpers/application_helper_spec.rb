require 'spec_helper'

describe ApplicationHelper do 

	let(:sale) {FactoryGirl.create(:sale)}  

	describe 'Formatted Sales' do

		it "should format the purchase count and item price" do  
			expect(helper.formatted(sale)).to eq(" 12 * 30")
		end
	end
end