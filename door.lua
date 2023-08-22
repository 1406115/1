local detector = peripheral.find("playerDetector") -- calls the playerDetector
local gpsx, gpsy, gpsz = gps.locate(5)
local pos1  = {x = gpsx + 2 ,y = gpsy + 1,z = gpsz - 1} -- first set of cords 
local pos2  = {x = gpsx - 1 ,y = gpsy + 4,z = gpsz + 2} -- second set of cords
while true do -- loops it so it always checks 
player = detector.isPlayersInCoords(pos1 , pos2 )-- checks for just me 
sleep(0.01) -- prevents it from having an error 
if player == true then do -- if im at the door open
rs.setOutput("top",true)
end
else do -- if im not at the door close
rs.setOutput("top",false)
end
end
end 

