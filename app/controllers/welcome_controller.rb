class WelcomeController < ApplicationController
  def index
    @articles = Article.first(5)
    @deals = Deal.first(5)
  end
  def privacy
  end
  def terms
  end
  def contact
  end
  def team
  end
  def about
  end
  
  def deals
    @deals = Deal.all
  end
  def downloads
    @downloads = Download.all
  end
  
  
  
end
