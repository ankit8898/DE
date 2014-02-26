class HomeController < ApplicationController

	def index
		@gross_revenue = params[:gross_revenue]
	end

    
    # Upload the .tab file
	def upload
		if params[:file]
			uploader = DataEngineering::Uploader.new(params[:file].path)
			@gross_revenue = uploader.perform
			flash[:success] = 'Successfully Uploaded!'
		else
			flash[:warning] = 'No File selected!'
		end
		redirect_to root_url(gross_revenue: @gross_revenue) 
	end
    
    #Download the .tab file
	def download
		send_file "#{Rails.root}/public/dummy_data.tab"
	end
end
