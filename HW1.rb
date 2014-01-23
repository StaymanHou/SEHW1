# sum =======================
def sum(i_array)
	s = 0
	i_array.each do |i|
		s += i
	end
end

puts '=======sum========'
puts sum([1,2,3,-1])