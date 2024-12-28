require 'bcrypt'
include BCrypt

my_password = BCrypt::Password.create("my password")
puts my_password == "my password"