#1
puts "\nProblem 1"
def var_params(*p)
	puts "There were #{p.length} parameters given"
	puts "Their values are:"
	for i in 0..p.length
		puts "#{p[i]}"
	end
end

var_params "test", 7, "b"
#1 End

#2
puts "\nProblem 2"
def mysterious_total(subtotal: 100, tax: 10, discount: 5, **hash)
	puts subtotal + tax - discount
	puts hash
end

mysterious_total(tax:3, discount: 15, subtotal: 150)
#2 End

#3
puts "\nProblem 3"
class Dog
	attr_reader :name, :breed, :birthday
	def initialize(name, breed, birthday)
		@name = name
		@breed = breed
		@birthday = birthday
	end

	def bark
		print "ruff\n"
	end
end

olive = Dog.new("Olive", "Labrador", "10-26-21")
cookie = Dog.new("Cookie", "Black Lab", "6-27-07")

olive.bark
puts cookie.name
puts cookie.breed
puts cookie.birthday
#3 End

#4
puts "\nProblem 4"
class Box
	#I assume directions have a typo, and "width" is meant instead of "weight"
	def initialize(width, height)
		@@width = width
		@@height = height
		@@fill_c = "$"
	end

	def fill(c)
		@@fill_c = c
	end

	def flip
		@temp = @@width
		@@width = @@height
		@@height = @temp
	end

	def draw
		for i in 1..@@height
			for j in 1..@@width
				if i == 1 || i == @@height
					if j == 1 || j == @@width
						print "+"
					else
						print "-"
					end
				else
					if j == 1 || j == @@width
						print "|"
					else
						print @@fill_c
					end
				end
				if j == @@width
					puts
				end
			end
		end
	end
end

b1 = Box.new(10, 20)
b1.fill("y")
b1.draw
b1.flip
b1.fill("x")
b1.draw
#4 End