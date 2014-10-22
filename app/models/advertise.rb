class Advertise < ActiveRecord::Base
  	mount_uploader :image, ImageUploader
	belongs_to :category

	scope :ads_of_category, lambda{ |cate_id|
		where("category_id = ?", cate_id)
	}
end
