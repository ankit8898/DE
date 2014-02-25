require 'spec_helper'

describe HomeController do
 
  let(:gross_revenue) {95}

  describe "GET index" do
      it "assigns gross_revenue" do
      get :index, {gross_revenue: gross_revenue}
      expect(assigns(:gross_revenue)).to eq("#{gross_revenue}")
    end
  end

  describe "POST Upload" do 
  	let(:file) {fixture_file_upload('files/test_data.tab', 'text/tab-separated-values')}
    
     it 'redirects_to root_url' do 
  		post :upload, :file => file
 		expect(response).to redirect_to(root_url(gross_revenue: gross_revenue))
  	end

    describe 'Successfull Upload' do 
      it 'should set flash[:success]' do 
      	post :upload, :file => file
 		expect(flash[:success]).to eq('Successfully Uploaded!')
      end
    end

    describe 'Failed Upload' do 
      it 'should set flash[:warning]' do 
      	post :upload, :file => nil
 		expect(flash[:warning]).to eq('No File selected!')
      end
    end
  end
end
