# Example a
# PLACE 0,0,NORTH
# MOVE
# REPORT
# Output: 0,1,NORTH

# Dir["/Users/developer/robos-silvio/*.rb"].each {|file| require file }
require './robot'
require './positions'


# File.foreach("commands.txt") do |line|
#   if (line.start_with?("PLACE"))
#     place_params = line.split(" ")[1].split(",")
#     robot = Robot.new(x: place_params[0], y: place_params[1], face: place_params[2])
#   end
# end

## PLACE inplicity...
robot = Robot.new(x: 0, y: 0, face: "NORTH")
robot.command("MOVE")
robot.command("MOVE")
robot.command("MOVE")
robot.command("MOVE")
robot.command("MOVE")
robot.command("LEFT")
robot.command("MOVE")
robot.command("REPORT")
puts "FINISHED"
