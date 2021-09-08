class UserController < ActionController::Base
    def new
        @user = User.new
        cookies[:params] = params
        @params = cookies[:params]
    end
end
