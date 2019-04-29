class ApplicationController < ActionController::Base
@deals = Deal.first(5)
end
