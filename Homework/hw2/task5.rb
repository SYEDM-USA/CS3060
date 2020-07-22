class Shape
  attr_accessor :color
  def initialize(color)
    @color = color
  end

end

class Circle < Shape
  attr_accessor :radius
  def initialize(color = "rec_Color",radius)
    super(color)
    @radius = radius
  end
  def area_out()
    pi = 3.14
    2*pi*radius
  end
end

class Rectangle < Shape
  attr_accessor :width, :length
  def initialize(color = "cir_Color",width ,length)
    super(color)
    @width = width
    @length = length
  end
  def area_out()
    length*width
  end
end

list = []
sum = 0
for i in 0..99
  toss = rand(2)
  if toss ==0
    r = Rectangle.new(1,1)
    list.push(r)
  else
    c = Circle.new(2)
    list.push(c)
  end
end
list.each{|item| sum = sum + item.area_out}
puts sum