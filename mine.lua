-- General turtle functions
function checkFuel()
  if turtle.getFuelLevel() <= 10
    turtle.select(16)
    turtle.refuel(64)
  end
end
  
  while true do
    -- Refuel first if needed
    checkFuel()

    masterPos = vector.new(66, 63, -7)

    -- Get own location
    mePos = vector.new(gps.locate())

    -- Calculate the vector the path to master
    toMaster = masterPos - mePos

    -- Calculate coordinates, move accordingly
    toForward = (toMaster.x - (toMaster.x % 1))
    toUp = (toMaster.y - (toMaster.y % 1))
    toRight = (toMaster.z - (toMaster.z % 1))

    -- Move forward/backward (X axis)
    if (toForward > 1) or (toForward < -1) then
      if toForward >= 0 then
        turtle.forward()
      else
        turtle.back()
      end
    end

    -- Move up/down (Y axis)
    if (toUp > 1) or (toUp < -1) then
      if toUp >= 0 then
        turtle.up()
      else
        turtle.down()
      end
    end

    -- Move right/left (Z axis)
    -- Turns it's face always to East (Forward: +X, Up: +Y, Right: +Z)
    if (toRight > 1) or (toRight < -1) then
      if toRight >= 0 then
        turtle.turnRight()
        for i=1,toRight do
          turtle.forward()
        end
        turtle.turnLeft()
      else
        turtle.turnLeft()
        for i=toRight,0 do
          turtle.forward()
        end
        turtle.turnRight()
      end
    end

    -- break
  end
end
