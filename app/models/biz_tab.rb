class BizTab < ActiveRecord::Base
  belongs_to :user
  has_attached_file :company_logo,
    :path => ":rails_root/public/system/company_logo/:id/:style/:basename.:extension", 
    :url => "/system/company_logo/:id/:style/:basename.:extension"
  do_not_validate_attachment_file_type :company_logo
  
  has_attached_file :office_interior_image,
    :path => ":rails_root/public/system/office_interior_image/:id/:style/:basename.:extension", 
    :url => "/system/office_interior_image/:id/:style/:basename.:extension"
  do_not_validate_attachment_file_type :office_interior_image
  
  has_attached_file :office_exterior_image,
    :path => ":rails_root/public/system/office_exterior_image/:id/:style/:basename.:extension", 
    :url => "/system/office_exterior_image/:id/:style/:basename.:extension"
  do_not_validate_attachment_file_type :office_exterior_image

    has_attached_file :pan_card_img,  styles: { medium: "700x580>", thumb: "100x80>" }, default_url: ":style/missing.jpg"
    validates_attachment_content_type :pan_card_img, content_type: /\Aimage\/.*\Z/
    validates_attachment :pan_card_img,size: {less_than: 6.megabytes}

    has_attached_file :pan_card_img,  styles: { medium: "600x600>", thumb: "100x100>" }, default_url: ":style/missing.jpg"
    validates_attachment_content_type :pan_card_img, content_type: /\Aimage\/.*\Z/
    validates_attachment :pan_card_img,size: {less_than: 6.megabytes}

    has_attached_file :img_service_tax,  styles: { medium: "600x600>", thumb: "100x100>" }, default_url: ":style/missing.jpg"
    validates_attachment_content_type :img_service_tax, content_type: /\Aimage\/.*\Z/
    validates_attachment :img_service_tax,size: {less_than: 6.megabytes}

    has_attached_file :img_reg_no,  styles: { medium: "600x600>", thumb: "100x100>" }, default_url: ":style/missing.jpg"
    validates_attachment_content_type :img_reg_no, content_type: /\Aimage\/.*\Z/
    validates_attachment :img_reg_no,size: {less_than: 6.megabytes}

    has_attached_file :img_vat_no,  styles: { medium: "600x600>", thumb: "100x100>" }, default_url: ":style/missing.jpg"
    validates_attachment_content_type :img_vat_no, content_type: /\Aimage\/.*\Z/
    validates_attachment :img_vat_no,size: {less_than: 6.megabytes}

    has_attached_file :img_sales_tax_no,  styles: { medium: "600x600>", thumb: "100x100>" }, default_url: ":style/missing.jpg"
    validates_attachment_content_type :img_sales_tax_no, content_type: /\Aimage\/.*\Z/
    validates_attachment :img_sales_tax_no,size: {less_than: 6.megabytes}

    has_attached_file :img_excise_reg_no,  styles: { medium: "600x600>", thumb: "100x100>" }, default_url: ":style/missing.jpg"
    validates_attachment_content_type :img_excise_reg_no, content_type: /\Aimage\/.*\Z/
    validates_attachment :img_excise_reg_no,size: {less_than: 6.megabytes}

    has_attached_file :img_cin_number,  styles: { medium: "600x600>", thumb: "100x100>" }, default_url: ":style/missing.jpg"
    validates_attachment_content_type :img_cin_number, content_type: /\Aimage\/.*\Z/
    validates_attachment :img_cin_number,size: {less_than: 6.megabytes}

    has_attached_file :img_tax_number,  styles: { medium: "600x600>", thumb: "100x100>" }, default_url: ":style/missing.jpg"
    validates_attachment_content_type :img_tax_number, content_type: /\Aimage\/.*\Z/
    validates_attachment :img_tax_number,size: {less_than: 6.megabytes}

    has_attached_file :img_dgft_number,  styles: { medium: "600x600>", thumb: "100x100>" }, default_url: ":style/missing.jpg"
    validates_attachment_content_type :img_dgft_number, content_type: /\Aimage\/.*\Z/
    validates_attachment :img_dgft_number,size: {less_than: 6.megabytes}

    has_attached_file :img_fssai_number,  styles: { medium: "600x600>", thumb: "100x100>" }, default_url: ":style/missing.jpg"
    validates_attachment_content_type :img_fssai_number, content_type: /\Aimage\/.*\Z/
    validates_attachment :img_fssai_number,size: {less_than: 6.megabytes}

    validates :office_mobile, presence: true, length: {in: 4..20}

    validates :office_type, presence: true
    validates :annual_sales, presence: true
    validates :no_of_employees, presence: true
    validates :year_of_establishment, presence: true
    validates :additional_businesses, presence: true    
end









 




