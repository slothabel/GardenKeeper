module ApplicationHelper
    def logged_in?
        !!session[:user_id]
    end

    def current_user
        @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
    end

    def empty_garden?
        self.plants.nil?
    end


    # def no_data?
    #     @user = User.find_by(id: session[:user_id])
    #     !!@user.garden || !!@user.plants || !!@user.plots
    # end
end
