class GalleryController < ApplicationController
  def index
    @image_posts = ImagePost.all
    @deals = Deal.first(5)
  end

  def submit
  end
end
