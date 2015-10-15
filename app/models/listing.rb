class Listing < ActiveRecord::Base
    has_attached_file :image, :styles => { :medium => "200x", :thumb => "100x100>" }, :default_url => "default_img.gif"
    validates_attachment :image, content_type: { content_type:["image/jpg","image/png", "image/jpeg", "image/gif"]}

end

