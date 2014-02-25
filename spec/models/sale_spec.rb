require 'spec_helper'

describe Sale do 
	it { should belong_to(:item) }
	it { should belong_to(:merchant) }
	it { should belong_to(:purchaser) }
end