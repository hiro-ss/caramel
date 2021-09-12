class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

    def after_sign_up_path_for(resource)
        "/user/#{current_user.id}"
    end

    protected

    def configure_permitted_parameters
        #新規登録時にname,introduceの取得を許可
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :introduce, :avatar])
        #情報更新時にname,introduceの取得を許可
        devise_parameter_sanitizer.permit(:account_update, keys: [:name, :introduce, :avatar])
    end
end
