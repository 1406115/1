local tArgs = { ... } 
if tArgs[1] == nil then
 print("select a deck")
 term.setTextColor( colors.orange )
 print("-Pop's fish deck(pop)")
 term.setTextColor( colors.purple )
 print("-Myce's myce deck(myce)")
else
 local deck1 = {"Spider Krab","Spider Krab","Spider Krab","Spider Krab","Blahaj","Blahaj","Dagger Dolphin","Dagger Dolphin","Red Herring","Red Herring","Red Herring","Red Herring","Blue Herring","Blue Herring","Blue Herring","Blue Herring","Leach","Leach","Leach","Leach","Cheerleader Spider","Cheerleader Spider","Cheerleader Spider","Cheerleader Spider","Obsidian Urchin","Obsidian Urchin","F.M.B.","F.M.B.","Mist Ball","Mist Ball","Mist Ball","Mist Ball","Absorbing Slime","Absorbing Slime","Ghost Wyvern","Dragonip","Mystic Pot","Mystic Pot","Mystic Pot","Mystic Pot"}
 local deck2 = {"UnMarketable Plushie","Britishroom","Britishroom","Britishroom","Britishroom","The Fungus","The Fungus","Mini Shroom","Mini Shroom","The Fungle","Cheerleader Spider","Spore Spreader","Munchshroom","Tri-Shroom","Tri-Shroom","M.9.","Pixie","M.9.","Pixie","Pathetic Shroom","Pathetic Shroom","Pathetic Shroom","Pathetic Shroom","Munchshroom","dndmyce","dndmyce","Mommy myce","Mommy myce","Pixie","Pixie","Tri-Shroom","Tri-Shroom","The Fungle","Cheerleader Spider","The Fungus","Marketable Plushie","Marketable Plushie","Marketable Plushie","Marketable Plushie","Marketable Plushie"}
 local deck3 = {"card1","card2","card3","card4","card5","card6","card7","card8","card9","card10","card11","card12","card13","card14","card15","card16","card17","card18","card19","card20","card21","card22","card23","card24","card25","card26","card27","card28","card29","card30","card31","card32","card33","card34","card35","card36","card37","card38","card39","card40"}
 local decks = {pop = deck1 , myce = deck2 , dev = deck3}
 local prime_color = {pop = colors.orange , myce = colors.purple , dev = colors.white} 
 local second_color = {pop = colors.lightGray , myce = colors.yellow , dev = colors. white}
 local deck = decks[ tArgs[1] ]
 function draw_from_deck(deck)
  local draw = deck[value]
  textutils.slowPrint(draw)
  table.remove (deck,value)
 end
 if tArgs[2] ~= "cheats_on" then
  value = math.random(1,#deck)
 term.setTextColor( prime_color[ tArgs[1] ] )
 textutils.slowPrint("Starting Hand:") 
 term.setTextColor( second_color[ tArgs[1] ] ) 
 for i=1,5 do
  repeat
   value = math.random(1,#deck)
   until(deck[value] ~= nil)
   draw_from_deck(deck)
  end
 while true do
  local event, key, is_held = os.pullEvent("key")
  if key == keys.space then
   if deck[1] == nil and deck[2] == nil and deck[3] == nil and deck[4] == nil and deck[5] == nil and deck[6] == nil and deck[7] == nil and deck[8] == nil and deck[9] == nil and deck[10] == nil and deck[11] == nil and deck[12] == nil and deck[13] == nil and deck[14] == nil and deck[15] == nil and deck[16] == nil and deck[17] == nil and deck[18] == nil and deck[19] == nil and deck[20] == nil and deck[21] == nil and deck[22] == nil and  deck[23] == nil and deck[24] == nil and deck[25] == nil and deck[26] == nil and deck[27] == nil and deck[28] == nil and deck[29] == nil and deck[30] == nil and deck[31] == nil and deck[32] == nil and deck[33] == nil and deck[34] == nil and deck[35] == nil and deck[36] == nil and deck[37] == nil and  deck[38] == nil and deck[39] == nil and deck[40] == nil and deck[41] == nil and deck[42] == nil and deck[43] == nil and deck[44] == nil and deck[45] == nil and deck[46] == nil and deck[47] == nil and deck[48] == nil and deck[49] == nil and deck[50] == nil and deck[51] == nil and deck[52] == nil and deck[53] == nil and deck[54] == nil and deck[55] == nil and deck[56] == nil and deck[57] == nil and deck[58] == nil and deck[59] == nil and deck[60] == nil then
    term.setTextColor( colors.red )
    textutils.slowPrint("YOU LOSE",2)
    break
   else
    repeat
     value = math.random(1,#deck)
    until(deck[value] ~= nil)
     term.setTextColor( prime_color[ tArgs[1] ] )
     textutils.slowPrint("You drew:")
     term.setTextColor( second_color[ tArgs[1] ] )
     draw_from_deck(deck)
   end
  end
 end
 else
  value = 0
  e = 0
  term.setTextColor( prime_color[ tArgs[1] ] )
 textutils.slowPrint("Starting Hand:") 
 term.setTextColor( second_color[ tArgs[1] ] ) 
  for i=1,5 do
  repeat
   value = e + 1
   until(deck[value] ~= nil)
   draw_from_deck(deck)
  end
 while true do
  local event, key, is_held = os.pullEvent("key")
  if key == keys.space then
   if deck[1] == nil and deck[2] == nil and deck[3] == nil and deck[4] == nil and deck[5] == nil and deck[6] == nil and deck[7] == nil and deck[8] == nil and deck[9] == nil and deck[10] == nil and deck[11] == nil and deck[12] == nil and deck[13] == nil and deck[14] == nil and deck[15] == nil and deck[16] == nil and deck[17] == nil and deck[18] == nil and deck[19] == nil and deck[20] == nil and deck[21] == nil and deck[22] == nil and  deck[23] == nil and deck[24] == nil and deck[25] == nil and deck[26] == nil and deck[27] == nil and deck[28] == nil and deck[29] == nil and deck[30] == nil and deck[31] == nil and deck[32] == nil and deck[33] == nil and deck[34] == nil and deck[35] == nil and deck[36] == nil and deck[37] == nil and  deck[38] == nil and deck[39] == nil and deck[40] == nil and deck[41] == nil and deck[42] == nil and deck[43] == nil and deck[44] == nil and deck[45] == nil and deck[46] == nil and deck[47] == nil and deck[48] == nil and deck[49] == nil and deck[50] == nil and deck[51] == nil and deck[52] == nil and deck[53] == nil and deck[54] == nil and deck[55] == nil and deck[56] == nil and deck[57] == nil and deck[58] == nil and deck[59] == nil and deck[60] == nil then
    term.setTextColor( colors.red )
    textutils.slowPrint("YOU CHEATED",2)
    break
   else
    repeat
     value = e + 1
    until(deck[value] ~= nil)
     term.setTextColor( prime_color[ tArgs[1] ] )
     textutils.slowPrint("You drew:")
     term.setTextColor( second_color[ tArgs[1] ] )
     draw_from_deck(deck)
   end
  end
 end
end
end
