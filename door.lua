local detector = peripheral.find("playerDetector") -- calls the playerDetector
local pos1  = { x = -88 , y = -59 , z = 59}
local pos2  = { x = -89 , y = -56 , z = 61}
while true do 
player = detector.isPlayerInCoords(pos1 , pos2 , "potato1000000000")
if player == true then do 
rs.setOutput("top",true)
write("true")
end
else do 
rs.setOutput("top",false)
write("false")
end
end
end 

