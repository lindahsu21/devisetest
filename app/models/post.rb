class Post < ActiveRecord::Base
# has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
#has_attached_file :image, default_url: "/images/:style/missing.png"
 

has_attached_file :image, style: { thumb: '120x120>', large: '300x300>' }, default_url: "/images/:style/missing.png"
validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/ 

end


