class SplashScreenController < ApplicationController
    def index
        redirect_to categories_url if user_signed_in?
      end
end
