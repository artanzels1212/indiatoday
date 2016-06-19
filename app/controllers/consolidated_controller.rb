class ConsolidatedController < ApplicationController
	before_action :authenticate_user!
	layout "dashboard"
	
	  def index
	  	@biz_tabs = BizTab.all.order("created_at DESC")
	  	@contact_details = ContactDetail.all.order("created_at DESC")
	  	@products = Product.all.order("created_at DESC")
	  	@statutories = Statutory.all.order("created_at DESC")
	  	@bwebsite_details = WebsiteDetail.all.order("created_at DESC")
	  end
end
