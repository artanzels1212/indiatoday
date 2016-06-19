json.array!(@biz_tabs) do |biz_tab|
  json.extract! biz_tab, :id, :primary_business_type, :website, :about_us, :year_of_establishment, :no_of_employees, :annual_sales, :ownership_type, :alternate_website, :additional_businesses, :office_type, :question, :bankers_details, :business_day, :business_hours, :specialization, :remarks, :deals_in, :business_preferred_area, :created_by, :updated_by, :deleted_by, :user_id
  json.url biz_tab_url(biz_tab, format: :json)
end
