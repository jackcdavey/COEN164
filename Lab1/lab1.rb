def str_dup(num, str)
	num.times{puts str}
end

str_dup(5, "click")

def sum_sq(num)
	res = 0
	(0..num).each do |i|
		res += i**2
	end
	puts res
end

sum_sq(7)

def print_hash()
	h = { 1=>["a", "b"],
		2=>["c"],
		3=>["a", ["d", "f"], "g"],
		4=>["q"]
	}
	puts h.values
end

print_hash()

def print_els()
	a = [1, [2, 3, 4], 5, 6, [7, 8], "love"]
	b = a.flatten
	for j in b
		print j.to_s + "-"
	end

end

print_els()

def inj_hash(arr)
	arr.inject({}) do |hash, element|
			hash[element.first] = element.last
			hash
	end
end

inj_hash([[:key1, "value1"], [:key2, "value2"]]);