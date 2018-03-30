class Citzen < ApplicationRecord
	validates :name, presence: true
	validates :age, presence: true
	validates :gender, presence: true

	def neon_infected?
		if self.neon_flag.nil?
			return false
		else
			if self.neon_flag>=3
				return true
			else
				return false
			end
		end
	end

	def eye_infected?
		if self.eye_flag.nil?
			return false
		else
			if self.eye_flag>=3
				return true
			else
				return false
			end
		end
	end

	def infected?
		if eye_infected? or neon_infected?
			return true
		else
			return false
		end
	end

end
