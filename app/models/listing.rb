class Listing < ActiveRecord::Base
    if Rails.env.development?
         has_attached_file :image, :styles => { :medium => "200x", :thumb => "100x100>" }, :default_url => "default_img.jpg"
    else
    has_attached_file :image, :styles => { :medium => "200x", :thumb => "100x100>" }, :default_url => "default_img.jpg", 
                                           :storage => :dropbox,
                                           :dropbox_credentials => Rails.root.join("config/dropbox.yml"),
                                           :path => ":style/:id_:filename"
    
    validates_attachment :image, content_type: { content_type:["image/jpg","image/png", "image/jpeg", "image/gif" ]}
    
    end
end

 
