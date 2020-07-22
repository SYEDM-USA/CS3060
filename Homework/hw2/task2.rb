
array_pass = []
for x in (0..49) do
  array_pass[x] = rand(10..100)
end

def funct(array_pass)
  array_pass.each { |x| puts"#{x} : #{(x*x*x)}"} #a part
  array_pass.each_slice(3) {|a| p a} #b part
  puts array_pass.select{|n| n.modulo(5).zero?} #c part
  cubes_array = array_pass.map{|cubes| cubes*cubes*cubes} #d part
  product_ofarray = array_pass.inject(1) { |product,next_elem| product*next_elem }#e part



end

funct(array_pass)


#Read me for all functions as comment in  readme.md
