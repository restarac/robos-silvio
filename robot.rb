class Robot
  attr_accessor :x, :y, :face

  def initialize(args)
    @x = args.fetch(:x)
    @y = args.fetch(:y)
    @face = args.fetch(:face)
  end

  def command(command)
    if (command == "MOVE")
      move
    elsif (command == "REPORT")
      report
    elsif (command == "LEFT")
      rotate
    else
    end
  end

  def move
    send("move_#{@face.downcase}!")
  end

  def report
    puts "#{@x}, #{@y}, #{@face}"
  end

  def rotate(navigator = Navigator)
    @face = navigator.get_direction(@face, "LEFT")
  end

  def move_north!
    @y+=1 if @y != 5
  end

  def move_south!
    @y-= 1 if @y != 0
  end

  def move_east!
    @x+=1 if @x != 5
  end

  def can_move_west?
    @x-=1 if @x != 0
  end
end
