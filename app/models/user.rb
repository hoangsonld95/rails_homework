class User < ActiveRecord::Base
<<<<<<< HEAD
    attr_accessor :remember_token
=======
<<<<<<< HEAD
>>>>>>> 8427a5e67ccc87e588511bf7900c6abab4fe4bc0
    before_save { self.email = email.downcase }
    validates :name, presence: true, length: { maximum: 50 }
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum: 255 },
    format: { with: VALID_EMAIL_REGEX },
    uniqueness: { case_sensitive: false }
    has_secure_password
<<<<<<< HEAD
    validates :password, presence: true, length: { minimum: 6 }, allow_nil: true
=======
    validates :password, presence: true, length: { minimum: 6 }
>>>>>>> 8427a5e67ccc87e588511bf7900c6abab4fe4bc0
    def User.digest(string)
        cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
        BCrypt::Engine.cost
        BCrypt::Password.create(string, cost: cost)
    end
<<<<<<< HEAD
    def User.new_token
        SecureRandom.urlsafe_base64
    end
    def remember
        self.remember_token = User.new_token
        update_attribute(:remember_digest, User.digest(remember_token))
    end
    class << self
    # Returns the hash digest of the given string.
    def digest(string)
        cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
        BCrypt::Engine.cost
        BCrypt::Password.create(string, cost: cost)
    end
    
    # Returns a random token.
    def new_token
        SecureRandom.urlsafe_base64
    end
    end
    def authenticated?(remember_token)
        return false if remember_digest.nil?
        BCrypt::Password.new(remember_digest).is_password?(remember_token)
    end
def forget
    update_attribute(:remember_digest, nil)
end
=======
=======
>>>>>>> 4cc34a407957ef17da36e70102c9e7246b69aedd
>>>>>>> 8427a5e67ccc87e588511bf7900c6abab4fe4bc0
end
