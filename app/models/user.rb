class User < ActiveRecord::Base
	has_secure_password

	has_many :settings
	has_many :websites

	validates_presence_of :fname
	validates_presence_of :lname
	validates :email, uniqueness: { case_sensitive: true }
	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
	validates_presence_of :password 
	validates_confirmation_of :password

	after_create :set_defaults

    def set_defaults
		self.create_setting frames: 1, style: "1", skin: "white", background: "white", website1: "https://www.duckduckgo.com"
    end
end
