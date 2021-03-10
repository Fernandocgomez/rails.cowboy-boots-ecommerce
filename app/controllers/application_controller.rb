class ApplicationController < ActionController::API
    before_action :authenticate_request

    attr_reader :current_user

    ###
    # @description: Check if the user is an admin.
    # @return {Boolean, nil}: True if user is an admin, nil if the user is a customer.  
    ###
    def is_admin
        return true if current_user.class == Admin
    end

    private

    ###
    # @description: Check if the user is authenticated
    # @return {JSON, void}: JSON if the user is not authorized and void if the user is authorized  
    ###
    def authenticate_request
        @current_user = AuthorizeApiRequest.call(request.headers).result
        render json: { error: 'Not Authorized' }, status: 401 unless @current_user
    end
end
