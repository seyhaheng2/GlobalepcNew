class Post < ActiveRecord::Base
  include PgSearch
  belongs_to :category
  belongs_to :user
  belongs_to :type
  mount_uploader :image, ImageUploader
  validates_presence_of :name, :description, :category_id

  scope :in_category, lambda{ |cate_id|
  	where("category_id = ?", cate_id)
  }
  scope :in_type, lambda{ |type_id|
    where("type_id = ?", type_id)
  }
  
  pg_search_scope :search, against: [:name, :description],
				  using: {tsearch: {dictionary: "english"}}

  def self.text_search(query)
  	if query.present?
  		search(query)
  	end
  end


end
