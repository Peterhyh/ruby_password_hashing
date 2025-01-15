require_relative 'authentication'


#List of user's usernames and passwords
users = [
  {username: "bob", password: "bobpassword"},
  {username: "john", password: "johnpassword"},
  {username: "terry", password: "terrypassword"},
  {username: "peter", password: "peterpassword"},
]

#New user list with secure password
secure_user_list = Authentication.create_secure_user(users)

#Terminal prompt to ask for user's username and password
puts "Username: "
username = gets.chomp.downcase
puts "Password: "
password = gets.chomp.downcase

puts Authentication.authenticate_user(username, password, secure_user_list)