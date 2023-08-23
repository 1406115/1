local tArgs = { ... }
local player = ( tArgs[1] )
local detector = peripheral.find("playerDetector")
	term.clear()
while true do
term.setCursorPos(1,0)
local pos = detector.getPlayerPos(player)
print("\n",player,"'s", "cords","\nx",pos.x,"\ny",pos.y,"\nz",pos.z)
end
