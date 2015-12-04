class User < ActiveRecord::Base
	has_one :setting
	has_many :websites

    validates :email, uniqueness: true
	validates :password, length: { in: 4..20 }
	#validates_presence_of :password, on: :create

	after_create :set_defaults

    def set_defaults
		self.create_setting frames: 1, style: "1", skin: "white", background: "white", website1: "https://www.duckduckgo.com"
    end
end
