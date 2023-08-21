local detector = peripheral.find("playerDetector") -- calls the playerDetector
local pos1  = {x = -88,y = -59,z = 59} -- first set of cords 
local pos2  = {x = -89,y = -56,z = 61} -- second set of cords
while true do -- loops it so it always checks 
player = detector.isPlayerInCoords(pos1 , pos2 , "potato1000000000")-- checks for just me 
sleep(0.01) -- prevents it from having an error 
if player == true then do -- if im at the door open
rs.setOutput("top",true)
end
else do -- if im not at the door close
rs.setOutput("top",false)
end
end
end 

