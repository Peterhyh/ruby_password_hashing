require_relative 'authentication'
require_relative 'student'



#List of user's usernames and passwords
users = [
  {username: "bob", password: "bobpassword"},
  {username: "john", password: "johnpassword"},
  {username: "terry", password: "terrypassword"},
  {username: "peter", password: "peterpassword"},
]

#New user list with secure password
# secure_user_list = Authentication.create_secure_user(users)


me = Student.new("peter", "huynh", "peterhyh@yahoo.com", "peterhyh", "123")

my_hashed_password = me.hash_password(me.password)

puts my_hashed_password


#Terminal prompt to ask for user's username and password
# puts "Username: "
# username = gets.chomp.downcase
# puts "Password: "
# password = gets.chomp.downcase

# puts Authentication.authenticate_user(username, password, secure_user_list)