def function1
    # Complete this function
	puts"Write 2 lines of code: "
	line1 = gets
	line2 = gets
	   
	aFile = File.new("savedFile.txt", "w")
	aFile.write(line1, line2)
	aFile.close
end


def function2
    # Complete this function
	puts"Type the name of a file:  "	
	line1 = gets
	line1 = line1.gsub!("\n",'')
	file = File.open("#{line1}","r")
	line1 = file.read
	state1 = /Ruby|ruby/
	state2 = /Java|Python/
	if (line1=~state1)
		puts "Extraordinary"
	elsif (line1=~state2)
		puts "The file is interesting"
	else 
		puts "The file is so so"
	end

end


def function3
    # Complete this function
	x = 1
	while x <= 100
		y = x*x
		puts "The square of integer #{x} is #{y}"
		x=x+1
	end

end


def function4
    # Complete this function
	puts"Enter a number from 0 to 100"
	line = gets
	num = line.to_i
	head = 0
	tails = 0
	toss=[num]
	j = 0
	if (num>=0 || num<=100)
		until(j == num-1) do
			toss[j] = rand(0..2)
			j= j+1
		end
	else
		puts "Entered a number out of range. EXIT"
		SystemExit
	end
	for a in 0..j do
    if (toss[a] == 0)
			head = head +1
		else
			tails = tails+1
		end
	end
	ratio = (head.to_f/tails.to_f)
	puts "Heads: #{head}"
	puts "Tails: #{tails}"
	puts "Ratio: #{ratio}"
end


def function5
	# Complete this function
	aFile = File.new("story.txt", "r")
	words = []
	freq = Hash.new(0)
	word_count = 0
	aFile.each do |line|
		words = line.to_s.downcase!
		words = line.scan(/\w+/)
		words.each do |wo_rd|
			if freq.has_key?(wo_rd)
				freq[wo_rd] = freq[wo_rd]+1
			else
				freq[wo_rd] = 1
			end
			word_count = word_count+1
		end
	end
	puts word_count
	puts freq.length
	last  = freq.length
	array_occur = []
	word_occur = []
	freq.sort{ |a, b| a[1]<=>b[1]}.each do |elem_hash|
		array_occur.push("#{elem_hash[1]}")
		word_occur.push("#{elem_hash[0]}")
	end

	puts word_occur[last-3]

end


# Now call the functions as the following.
function1
function2
function3
function4
function5
