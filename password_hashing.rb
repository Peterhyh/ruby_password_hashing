require 'bcrypt'
include BCrypt

#List of user's usernames and passwords
users = [
  {username: "bob", password: "bobpassword"},
  {username: "john", password: "johnpassword"},
  {username: "terry", password: "terrypassword"},
  {username: "peter", password: "peterpassword"},
]

#Method to create new hashed and salted password
def hash_password(password)
  BCrypy::Password.create(password)
end



