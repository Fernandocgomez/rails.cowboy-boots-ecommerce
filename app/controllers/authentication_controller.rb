class AuthenticationController < ApplicationController
    skip_before_action :authenticate_request
   
    ###
    # @description: Authenticate user
    # @return {JSON}: Token and user or Error message 
    ###
    def authenticate
      encoded_token = AuthenticateUser.call(params[:email], params[:password])
      if encoded_token.success?
        if(encoded_token.result[:user].class === Admin)
          render json: { res: { user: AdminSerializer.new(encoded_token.result[:user]), token: encoded_token.result[:token] } }
        else
          render json: { res: { user: CustomerSerializer.new(encoded_token.result[:user]), token: encoded_token.result[:token] } }
        end 
      else
        render json: { error: encoded_token.errors }, status: :unauthorized
      end
    end
end