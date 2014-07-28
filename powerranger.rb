
class Person

	def initialize(name, caffeine_level=0)
		@name = name
		@caffeine_level = caffeine_level
	end

	def run
		puts "You are running away from your enemies! Go back and fight!"
	end

	def scream
		puts "Ahhh!! save me!!!!"
	end

	def drink_coffee
		puts "That was a refreshing cup of joe!"
		@caffeine_level += 1
		puts "Your new caffeine level is #{@caffeine_level}."
	end

end

class PowerRanger
end

class EvilNinja
end
