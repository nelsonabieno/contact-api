require 'jwt'

class Auth < ApplicationController
  ALGORITHM = 'HS256'

  def self.issue(payload)
    puts "======my secret====="
    puts auth_secret
    puts "======payload====="
    puts payload
    puts "======ALGORITHM====="
    puts ALGORITHM
    puts "====== ENV['AUTH_SECRET']====="
    puts  ENV['AUTH_SECRET']

    JWT.encode(
      payload,
      auth_secret,
      ALGORITHM
    )
  end

  def self.decode(token)
    JWT.decode( token,
      auth_secret,
      true,
      { algorithm: ALGORITHM }).first
  end

  def self.auth_secret
    ENV['AUTH_SECRET']
  end
end