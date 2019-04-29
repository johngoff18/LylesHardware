class WelcomeController < ApplicationController
  def index
    @articles = Article.first(5)
    @deals = Deal.first(5)
  end
end
