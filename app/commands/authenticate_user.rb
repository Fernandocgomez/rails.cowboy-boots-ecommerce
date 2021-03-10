class AuthenticateUser
    prepend SimpleCommand
  
    ###
    # @description: Initialize class object AuthenticateUser.
    # @param {String, String}: user email and password.
    # @return {AuthenticateUser}: An instance of AuthenticateUser.
    ###
    def initialize(email, password)
      @email = email
      @password = password
    end
  
    ###
    # @description: Get encoded token.
    # @return {String, nil}: Token of type string or nil.
    ###
    def call
      user = get_user

      return nil unless user

      if user.class == Admin
          JsonWebToken.encode(admin_id: user.id)
      else
          JsonWebToken.encode(customer_id: user.id)
      end
      
    end
  
    private
  
    attr_accessor :email, :password
  
    ###
    # @description: Locates the user by email and authenticates using the password provided.
    # @param {Admin, Customer, nil}: An instance of Admin or Customer if credentials are correct, otherwise nil. 
    # @return {any}: 
    ###
    def get_user
      user = Admin.find_by_email(email)

      if user
        return user if user && user.authenticate(password)
      else
        user = Customer.find_by_email(email)
        return user if user && user.authenticate(password)
      end

      errors.add :user_authentication, 'invalid credentials'
      nil
    end
end