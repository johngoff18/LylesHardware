class ApplicationController < ActionController::Base
before_action :set_search, :set_articles, :set_email

def set_articles
@deals = Deal.first(5)
end

def set_search
@q = Article.ransack(params[:q])
end

def set_email
  @subscriber = Subscriber.new(params[:email])
end
end
