class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :checking

  def checking
  	@categories = Category.order(:position)
  	@recent_posts = Post.last(5)
    @featured_posts = Post.order(countclick: :desc).first(5)
  	

    ads_id = params[:id]
    if ads_id
      @advertise = Advertise.ads_of_category(ads_id)
    else
      @advertise = Advertise.all
    end
  end
end
