class Robot
  attr_accessor :x, :y, :direction

  def initialize(x, y, direction, n = 5, m = 6)
    @x = x
    @y = y
    @direction = direction
    @n = n #координаты стола сделать надо класс стол
    @m = m
  end
  def move(d)
    case d
    when 'WEST'
      if @x > 0
        @x = @x - 1
      end
    when 'EAST'
      if @x < @n
        @x = @x + 1
      end
    when 'NORTH'
      if @y < @m
        @y = @y + 1
      end
    when 'SOUTH'
      if @y > 0
        @y = @y - 1
      end
    end
  end
  def left(d)
    case d
    when 'WEST'
      @direction = 'SOUTH'
    when 'EAST'
      @direction = 'NORTH'
    when 'NORTH'
      @direction = 'WEST'
    when 'SOUTH'
      @direction = 'EAST'
    end
  end
  def right(d)
    case d
    when 'WEST'
      @direction = 'NORTH'
    when 'EAST'
      @direction = 'SOUTH'
    when 'NORTH'
      @direction = 'EAST'
    when 'SOUTH'
      @direction = 'WEST'
    end
  end
  def report
    puts "Output: #{@x}, #{@y}, #{@direction}"
  end


end





