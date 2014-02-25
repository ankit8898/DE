require 'spec_helper'

describe Merchant do 

   it { should validate_presence_of(:name) }
   it { should validate_presence_of(:address) }
end