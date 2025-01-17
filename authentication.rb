module Authentication
  require 'bcrypt'
  include BCrypt
  puts "Authentication module activated"
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
end
