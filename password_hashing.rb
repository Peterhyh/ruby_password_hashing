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
  BCrypt::Password.create(password)
end

#Method to verify password
def verify_password(password)
  BCrypt::Password.new(password)
end

#Method to create a secure password for each user
def create_secure_user(list_of_users)
  list_of_users.each do |user_record|
    user_record[:password] = hash_password(user_record[:password])
  end
end

#Method to verify entered username and password
def authenticate_user(username, password, list_of_secure_users)
  list_of_secure_users.each do |user_record|
    if user_record[:username] == username && verify_password(user_record[:password]) == password
      return user_record
    end
  end
  "Username/password is incorrect."
end

#New user list with secure password
secure_user_list = create_secure_user(users)

#Terminal prompt to ask for user username and password
puts "Username: "
username = gets.chomp.downcase
puts "Password: "
password = gets.chomp.downcase

puts authenticate_user(username, password, secure_user_list)