class PasswordManager

    def initialize
        @service_hash = {}
    end

    def valid?(password)
        password_is_long = password.length > 7 
        special_char = password.include?("!") || password.include?("@") || password.include?("$") || password.include?("%") || password.include?("&")
    
        return password_is_long && special_char
            
    end
    
    def add(service, password)
        password_is_long = password.length > 7 
        special_char = password.include?("!") || password.include?("@") || password.include?("$") || password.include?("%") || password.include?("&")

        if password_is_long && special_char
            return @service_hash[service] = password
        end
    end

    def password_for(service)
        return @service_hash[service]
    end

    def services
        return @service_hash.keys
    end
end

