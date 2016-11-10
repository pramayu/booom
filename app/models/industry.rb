class Industry < ApplicationRecord

	validates :slug, uniqueness: true, presence: true
	before_validation :generate_slug
	
	has_many :graphindustries
	has_many :graphics, through: :graphindustries

	has_many :fontindustries
	has_many :fonts, through: :fontindustries

	def to_param
    	slug
  	end

  	def generate_slug
		self.slug ||= name.parameterize
	end
end
