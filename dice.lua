local tArgs = { ... }
local d20 = tonumber( tArgs[1] )
while true do
 local event, key, is_held = os.pullEvent("key")
  if key == keys.space then
    value = math.random(1,d20)
    print("you rolled", value)
 else 
  if key == keys.up 
   value = math.random(10,d20)
   print("you rolled", value)
  else 
  if key == keys.down 
   value = 20
   print("you rolled", value)
  end
  end
 end
end
