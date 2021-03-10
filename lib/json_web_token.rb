class JsonWebToken
    class << self
      ###
      # @description: Encode token.
      # @param {Object, Integer}: Object containing the id of the user, date 24 hour from now.  
      # @return {String}: Token encoded. 
      ###
      def encode(payload, exp = 24.hours.from_now)
        payload[:exp] = exp.to_i
        JWT.encode(payload, Rails.application.secrets.jwt_secret)
      end
   
      ###
      # @description: Decode token.
      # @param {String}: Token encoded
      # @return {Object}: Object containing the id of the user, date 24 hour from now.
      ###
      def decode(token)
        body = JWT.decode(token, Rails.application.secrets.jwt_secret)[0]
        return HashWithIndifferentAccess.new body
      rescue
        nil
      end
    end
end