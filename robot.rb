class Robot
  attr_accessor :face

  def initialize(args)
    @position = Position.new(args.fetch(:x), args.fetch(:y))
    @face = Object.const_get(args.fetch(:face).downcase.capitalize)
  end

  def command(command)
    if (command == "MOVE")
      @position = @face.move(@position)
    elsif (command == "REPORT")
      report
    elsif (command == "LEFT")
      @face = @face.left
    elsif (command == "RIGHT")
      @face = @face.left
    end
  end

  def report
    puts "#{@position}, #{@face}"
  end
end
