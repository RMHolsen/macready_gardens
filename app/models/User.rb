class User < ActiveRecord::Base 
    #has_secure_password
    # DO NOT UNCOMMENT UNTIL YOU'RE READY TO WORK ON THE LOGIN FUNCTION 

    validates :username, presence: true, uniqueness: true 
    validates :display_name, presence: true 
    # validates :email, presence: true, uniqueness: true 
    # In case you want to do *hurk* omniauth? Or maybe just to differentiate accounts? IDK.
    has_many :projects 

    # CUSTOM STITCH-CALCULATING METHODS 
end 