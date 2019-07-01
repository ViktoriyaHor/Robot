require_relative 'robot'

class Comand
  @a = false #проверка первая команда должна быть PLACE
  puts 'Введите ширину стола'
  @w = gets.chomp.to_i #добавлять приведение к типу в переменных, а не в вызове
  puts 'Введите высоту стола'
  @h = gets.chomp
  def self.input_comand(com)
    arr_com = com.split(' ')
    com_word = arr_com[0]
    if arr_com.size > 1
      pos = arr_com[1]  #позиция робота
      @coord = pos.split(',')
    end
    case com_word
    when 'PLACE'
      if @w != '' && @h != ''
        @robot1 = Robot.new(@coord[0].to_i,@coord[1].to_i,@coord[2],@w.to_i,@h.to_i)
      end
      if @w = '' && @h = ''
        @robot1 = Robot.new(@coord[0].to_i,@coord[1].to_i,@coord[2])
      end
      if @w != '' && @h = ''
        @robot1 = Robot.new(@coord[0].to_i,@coord[1].to_i,@coord[2],@w.to_i)
      end
      if @w = '' && @h != ''
        @robot1 = Robot.new(@coord[0].to_i,@coord[1].to_i,@coord[2])
      end
      # @robot1 = Robot.new(@coord[0].to_i,@coord[1].to_i,@coord[2],@w.to_i,@h.to_i)
      @a = true
      # p @w
      # PLACE 0,0,WEST
    when 'LEFT'
      if @a == true
        # p @robot1.direction
        @robot1.left(@robot1.direction)
      else p 'Сначала введите PLACE'
      end
    when 'RIGHT'
      if @a == true
        @robot1.right(@robot1.direction)
      else p 'Сначала введите PLACE'
      end
      when 'MOVE'
      if @a == true
        @robot1.move(@robot1.direction)
      else p 'Сначала введите PLACE'
      end
      when 'REPORT'
      if @a == true
        @robot1.report
      else p 'Сначала введите PLACE'
      end
    else
      puts 'Неправильно введена команда'
    end
  end
end

puts 'Введите команду'
loop do
  c = gets.chomp
  Comand.input_comand(c)
end
