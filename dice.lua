local tArgs = { ... }
local d20 = tonumber( tArgs[1] )
while true do
 local event, key, is_held = os.pullEvent("key")
  if key == keys.space then
    value = math.random(1,d20)
    print("you rolled" value)
  end
end
