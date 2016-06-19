class Statutory < ActiveRecord::Base
  belongs_to :user

    has_attached_file :pan_img,  styles: { medium: "700x580>", thumb: "100x80>" }, default_url: ":style/missing.jpg"
  	validates_attachment_content_type :pan_img, content_type: /\Aimage\/.*\Z/
  	validates_attachment :pan_img,size: {less_than: 3.megabytes}
end
