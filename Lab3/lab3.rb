#Question 1
puts "\nQuestion 1"
require './gym.rb'
require './dojo.rb'


dojo_push = DOJO::Push.new
gym_push = GYM::Push.new
p dojo_push.up
p gym_push.up


#Question 2
puts "\nQuestion 2"
class Parent
def initialize(name="nobody")
    @name = name
  end
end
class Child < Parent
  attr_accessor :name, :grade
  def initialize(name, grade)
  	super (name)
    @grade = grade
end end
y = Child.new("yuan", 100)
print "name is: ", y.name
puts
puts y.grade
y.grade = 90
puts y.grade

#Question 3
puts "\nQuestion 3"
module Dojo 
	A=4
	module Kata 
		B=8
		module Roulette 
			class ScopeIn
				def ScopeIn.push 
					15
				end
			end
		end 
	end
end
A = 16 
B = 23 
C = 42

puts Dojo::A
puts Dojo::Kata::B
puts Dojo::Kata::Roulette::ScopeIn.push
puts A
puts B
puts C

#Question 4
puts "\nQuestion 4"
module Greetings 
	def english
		puts "Hello!" 
	end
	def french
		puts "Bonjour!"
	end
	def spanish
		puts "Hola!"
	end 
end

#a
class Hello
	include Greetings
end
hi = Hello.new
hi.spanish

#b
#Hello.french

#Question 5
=begin
/hello/ "hello"				/go+gle/ "goooogle", "gogle"		 /\d/ "1", "7"
/love | hate/ "love", "hate" 		/g(oo)+gle/ "goooogle", "google"		/\d{5}/ "12345", "67890"
/colou?r/	"colour", "color"			/\d+(\.\d\d)?/
					/x{3}/	"xxx"		/hello\d+/ "hello0912" "hello1"
/gr[ae]y/ "graly", "grely"			/x{6,10}/ "xxxxxx" "xxxxxxxxxx"		 /sh[^io]t/	"shet", "shlt"
					/w/	"1", "2"				/^ruby/ "ruby hello", "ruby goodbye"
/b[aeiou]bble/ "babble", "bobble"		/\w/ "A", "I"			/ruby$/	"hello ruby", "goodbye ruby"
/go*gle/ "go" "gogle"			/d/ "1" "2"			/^ruby$/ "ruby hello", "goodbye ruby"
=end

#Question 6
puts "\nQuestion 6"
string = "abc12def34ghi56jkl78mn98op76qrs"
puts string.gsub(/\d/, "-")
p string.scan(/\d/)
puts string.match(/\d/)
puts string.gsub(/\D/, "-")











