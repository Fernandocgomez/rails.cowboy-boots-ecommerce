class AuthenticationController < ApplicationController
    skip_before_action :authenticate_request
   
    ###
    # @description: Authenticate user
    # @return {JSON}: Token or Error message 
    ###
    def authenticate
      encoded_token = AuthenticateUser.call(params[:email], params[:password])
      if encoded_token.success?
        render json: { auth_token: encoded_token.result }
      else
        render json: { error: encoded_token.errors }, status: :unauthorized
      end
    end
end