local tArgs = { ... }
local q1    = tonumber( tArgs[1] )
local q2    = tonumber( tArgs[2] )
local q3    = tonumber( tArgs[3] )

function checkFuel()
  if turtle.getFuelLevel() <= 10 then
    turtle.select(16)
    turtle.refuel(64)
  end
end
  
  while true do
    checkFuel()
  
    masterPos = vector.new(q1, q2, q3)

    mePos = vector.new(gps.locate())


    toMaster = masterPos - mePos
  if toMaster ~= 0 then do


    toForward = (toMaster.x)
    toUp = (toMaster.y)
    toRight = (toMaster.z)

    if (toForward > 0) or (toForward < 0) then
      if toForward >= 0 then
      turtle.dig()
        turtle.forward()
      else
      turtle.turnLeft()
      turtle.turnLeft()
       turtle.dig()
        turtle.forward()
      turtle.turnRight()
      turtle.turnRight()
      end
    end


    if (toUp > 0) or (toUp < 0) then
      if toUp >= 0 then
      turtle.digUp()
        turtle.up()
      else
      turtle.digDown()
        turtle.down()
      end
    end

    if (toRight > 0) or (toRight < 0) then
      if toRight >= 0 then
        turtle.turnRight()
        for i=1,toRight do
        turtle.dig()
          turtle.forward()
        end
        turtle.turnLeft()
      else
        turtle.turnLeft()
        for i=toRight,0 do
         turtle.dig()
          turtle.forward()
        end
        turtle.turnRight()
      end
    end
      end


end
