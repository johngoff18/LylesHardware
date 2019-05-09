class SubscribersController < ApplicationController

  def create
      @subscriber = Subscriber.new(subscriber_params)
      @subscriber.save
      redirect_to root_path, notice: 'Successfully Subscribed to Email Newsletter'
    end
    
    private
      def subscriber_params
        params.require(:subscriber).permit(:email)
      end
  
end
