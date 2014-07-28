def fight_scene
	bob = Person.new("Bob", 100)
	rob = Person.new("Rob", 150)
	jason = PowerRanger.new("Jason", 200, 300, "Red")
	bruce = PowerRanger.new("Bruce", 400, 600, "Black")
	penguin = EvilNinja.new("The Penguin", 300, 400, "Evilll")
	riddler = EvilNinja.new("The RIddler", 300, 400, "Evillllll")
	bob.run
	rob.scream
	rob.drink_coffee
	jason.punch(bob)
	bruce.rest
	bruce.use_megazord(rob)
	penguin.punch(rob)
	riddler.cause_mayhem(bob)
end

module Punch
	def punch(person)
		puts "You just punched #{person.name}!"
		person.run
		person.scream
		if @strength > 5
			puts "#{person.name} was somersaulted into the air!"
			person.caffeine_level -= @strength
			puts "#{person.name}'s caffeine level is now #{person.caffeine_level}."
		end
		@caffeine_level -= 1
		puts "Your new caffeine level is #{@caffeine_level}."
	end
end


class Person
	attr_accessor :name
	attr_accessor :caffeine_level

	def initialize(name, caffeine_level=0)
		@name = name
		@caffeine_level = caffeine_level
	end

	def run
		puts "#{@name} is running away! Go back and fight!"
	end

	def scream
		puts "#{@name} screams 'Ahhh!! save me!!!!'"
	end

	def drink_coffee
		puts "That was a refreshing cup of joe!"
		@caffeine_level += 1
		puts "Your new caffeine level is #{@caffeine_level}."
	end

end

class PowerRanger < Person
	#deleted accessor for strength and color
	include Punch

	def initialize(name, caffeine_level=0, strength, color)
		super(name, caffeine_level)
		@strength = strength
		@color = color
	end

	# def punch(person)
	# 	puts "You just punched #{person.name}!"
	# 	person.run
	# 	person.scream
	# 	if @strength > 5
	# 		puts "#{person.name} was somersaulted into the air!"
	# 		person.caffeine_level -= @strength
	# 		puts "#{person.name}'s caffeine level is now #{person.caffeine_level}."
	# 	end
	# 	@caffeine_level -= 1
	# 	puts "Your new caffeine level is #{@caffeine_level}."			
	# end

	def rest
		@caffeine_level += 2
		puts "Good rest! Your new caffeine level is #{caffeine_level}."
	end

	def use_megazord(person)
		puts "You just punched #{person.name}!"
		person.run
		person.scream
		puts "#{person.name} was somersaulted into the air!"
		person.caffeine_level -= 5000
		puts "#{person.name}'s caffeine level is now #{person.caffeine_level}."
		@caffeine_level -= 10
		puts "Your new caffeine level is #{@caffeine_level}."
	end

end

class EvilNinja < Person
	
	include Punch

	def initialize(name, caffeine_level=0, strength, evilness)
		super(name, caffeine_level)
		@strength = strength
		@evilness = evilness
	end

	# def punch(person)
	# 	puts "You just punched #{person.name}!"
	# 	person.run
	# 	person.scream
	# 	if @strength > 5
	# 		puts "#{person.name} was somersaulted into the air!"
	# 		person.caffeine_level -= @strength
	# 		puts "#{person.name}'s caffeine level is now #{person.caffeine_level}."
	# 	end
	# 	@caffeine_level -= 1
	# 	puts "Your new caffeine level is #{@caffeine_level}."
	# end

	def cause_mayhem(person)
		puts "You are causing mayhem! Havoc!!!"
		person.caffeine_level = 0
		puts "#{person.name}'s caffeine level is now zero!!!"
	end
end
