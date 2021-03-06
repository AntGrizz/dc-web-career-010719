class ApplicationController < ActionController::Base
    helper_method :current_user

    # memoization
    def current_user
        if @username
            return @username
        else
            user = User.find_by(id: session["user_id"])
            @username = user.username.capitalize
        end
    end
end
