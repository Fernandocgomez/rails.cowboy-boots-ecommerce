class AuthorizeApiRequest
    prepend SimpleCommand
  
    ###
    # @description: Initialize class object AuthorizeApiRequest.
    # @param {Object}: Request headers.
    # @return {AuthorizeApiRequest}: An instance of AuthorizeApiRequest.
    ###
    def initialize(headers = {})
      @headers = headers
    end
  
    ###
    # @description: Public method to get access to the get_user method.
    # @return {Customer, Admin, nil}: An instance of Admin, an instance of Customer or nil.
    ###
    def call
      get_user
    end
  
    private
  
    attr_reader :headers
  
    ###
    # @description: Check if the token was decoded succesfuly and use the data to located the user by id.
    # @return {Customer, Admin, nil}: An instance of Admin or Customer if credentials are correct, otherwise nil. 
    ###
    def get_user
        if decoded_auth_token
            if decoded_auth_token[:admin_id]
                @user ||= Admin.find(decoded_auth_token[:admin_id])
            elsif decoded_auth_token[:customer_id]
                @user ||= Customer.find(decoded_auth_token[:customer_id])
            else
                @user = nil
                @user || errors.add(:token, 'Invalid token') && nil
            end 
        else
            @user = nil
            @user || errors.add(:token, 'Invalid token') && nil
        end 
    end
  
    ###
    # @description: Decode the token and transform it into an object
    # @return {nil, Object }: Object with the user id and expiration date 
    ###
    def decoded_auth_token
      @decoded_auth_token ||= JsonWebToken.decode(http_auth_header)
    end

    ###
    # @description: Check if the token exist on the headers
    # @return {nil, String}: Token from headers
    ###
    def http_auth_header
      if headers['Authorization'].present?
        return headers['Authorization'].split(' ').last
      else
        errors.add(:token, 'Missing token')
      end
      nil
    end
end