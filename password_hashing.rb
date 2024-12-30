require 'bcrypt'
include BCrypt

#List of user's usernames and passwords

users = [
  {username: "bob", password: "bobpassword"},
  {username: "john", password: "johnpassword"},
  {username: "terry", password: "terrypassword"},
  {username: "peter", password: "peterpassword"},
]


my_password = BCrypt::Password.create("my password")
puts my_password == "my_password"