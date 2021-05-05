require "openssl/hmac"

module Machineid
  module ProtectedId
    def self.protect(appId : String, id : String) : String
      return OpenSSL::HMAC.hexdigest(:sha256,
        id, # key
        appId # message
      )
    end
  end
end
