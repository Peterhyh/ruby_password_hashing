require 'bcrypt'
include BCrypt

my_password = BCrypt::Password.create("my_password")
puts my_password == "my_password"