class AuthenticateAdmin
    prepend SimpleCommand
  
    def initialize(username, password)
      @username = username
      @password = password
    end
  
    def call
      JsonWebToken.encode(admin_id: admin.id) if admin
    end
  
    private
  
    attr_accessor :username, :password
  
    def admin
      admin = Admin.find_by_username(username)
      return admin if admin && admin.authenticate(password)
  
      errors.add :admin_authentication, 'invalid credentials'
      nil
    end
end