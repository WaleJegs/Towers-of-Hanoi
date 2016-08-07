def towers
	tower1 = ["a","b","c","d"]
	tower2 = []
	tower3 = []
	puts "tower1 is #{tower1.to_s}, tower2 is #{tower2.to_s}, tower3 is #{tower3.to_s}"
	while tower3 != ["a","b","c","d"]
		puts "What tower do you want to select a disc from, tower1, tower2 or tower3?"
		origin = gets.chomp 
		puts "Where should this disc be placed?"
		destination = gets.chomp 
		if origin == "tower1" && destination == "tower2"
			tower2.unshift(tower1.shift)
		elsif origin == "tower1" && destination == "tower3" 
			tower3.unshift(tower1.shift)
		elsif origin == "tower2" && destination == "tower1"
			tower1.unshift(tower2.shift)
		elsif origin == "tower2" && destination == "tower3"
			tower3.unshift(tower2.shift)
		elsif origin == "tower3" && destination == "tower1"
			tower1.unshift(tower3.shift)
		elsif origin == "tower3" && destination == "tower2"
			tower2.unshift(tower3.shift)
		end 
		puts "tower1 is #{tower1.to_s}, tower2 is #{tower2.to_s}, tower3 is #{tower3.to_s}"
	end 
	return "Congratulations!!!"
end 

		