class User < ActiveRecord::Base
    has_secure_password
    
    #EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
    validates :name, :presence => true #, :length => { :in => 3..20 }
    validates :email, :presence => true, :uniqueness => true#, :format => EMAIL_REGEX
    #validates :password, :confirmation => true
    validates_length_of :password, :in => 4..20, :on => :create

end
