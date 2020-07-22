def myGrep()
  find_str = ARGV[0]
  file_name = ARGV[1]
  line_number = 0
  if (File.file? file_name)
    aFile = File.open(file_name, "r")
    aFile.each do |line|
      line_number = line_number+1
      if(line.include? find_str)
        puts line
        puts "This is line number #{line_number}"
      end
    end
  else
    puts "File not found"
  end

end

myGrep()
#Read me for all functions as comment in  readme.md