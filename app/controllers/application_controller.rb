class ApplicationController < ActionController::Base
        protect_from_forgery with: :exception
        include DeviseTokenAuth::Concerns::SetUserByToken
        skip_before_action :verify_authenticity_token
end
