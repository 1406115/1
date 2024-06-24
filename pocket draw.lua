local monitor_right = window.create(term.native(), 1, 1, 26, 10)
page = 1
slot = 0
hand = {{" "," ",colors.white," "," "},{" "," ",colors.white," "," "},{" "," ",colors.white," "," "},{" "," ",colors.white," "," "},{" "," ",colors.white," "," "},{" "," ",colors.white," "," "},{" "," ",colors.white," "," "},{" "," ",colors.white," "," "},{" "," ",colors.white," "," "},{" "," ",colors.white," "," "}}
term.clear()
term.setCursorPos(23, 11)
 term.setTextColor( colors.white )
term.write("draw")
term.setCursorPos(1, 11)
local tArgs = { ... }
if tArgs[1] == nil then
 print("select a deck")
 term.setTextColor( colors.orange )
 print("-Pop's fish deck(pop)")
 term.setTextColor( colors.purple )
 print("-Myce's myce deck(myce)")
 term.setTextColor( colors.green )
 print("-Artict's green orange deck(artic)")
 term.setTextColor( colors.lightGray )
 print("-The Phantom deck(phantom)")
 term.setTextColor( colors.orange )
 print("-Go Punch a Brick(brick)")
else
 local deck1 = {"Spider Krab","Spider Krab","Spider Krab","Spider Krab","Blahaj","Blahaj","Dagger Dolphin","Dagger Dolphin","Red Herring","Red Herring","Red Herring","Red Herring","Blue Herring","Blue Herring","Blue Herring","Blue Herring","Leach","Leach","Leach","Leach","Cheerleader Spider","Cheerleader Spider","Cheerleader Spider","Cheerleader Spider","Obsidian Urchin","Obsidian Urchin","F.M.B.","F.M.B.","Mist Ball","Mist Ball","Mist Ball","Mist Ball","Absorbing Slime","Absorbing Slime","Ghost Wyvern","Dragonip","Mystic Pot","Mystic Pot","Mystic Pot","Mystic Pot"}
 local deck2 = {{"UnMarketable Plushie","9",colors.purple,"Mr President, im in"," "},{"Britishroom","3",colors.purple,"When a Fungus Creature is","Destroyed, do 1 Damage"},{"Britishroom","3",colors.purple,"When a Fungus Creature is","Destroyed, do 1 Damage"},{"Britishroom","3",colors.purple,"When a Fungus Creature is","Destroyed, do 1 Damage"},{"Britishroom","3",colors.purple,"When a Fungus Creature is","Destroyed, do 1 Damage"},{"The Fungus","2",colors.purple,"When Played: Create 2 Fungus","Creatures from Destoy pile"},{"The Fungus","2",colors.purple,"When Played: Create 2 Fungus","Creatures from Destoy pile"},{"The Fungus","2",colors.purple,"When Played: Create 2 Fungus","Creatures from Destoy pile"},{"Mini Shroom","1",colors.lightGray,"When Played:","Destroy 1 Fungus Creature"},{"Mini Shroom","1",colors.lightGray,"When Played:","Destroy 1 Fungus Creature"},{"The Fungle","3",colors.lightGray,"Creatures Here","Become Fungus"},{"The Fungle","3",colors.lightGray,"Creatures Here","Become Fungus"},{"Cheerleader Spider","2",colors.lightGray,"This only attacks in","Adjacent Lanes"},{"Cheerleader Spider","2",colors.lightGray,"This only attacks in","Adjacent Lanes"},{"Spore Spreader","4",colors.purple,"FUCK","YOU"},{"Munchshroom","3",colors.lightGray,"On Kill: Double","this Creatures Health"},{"Munchshroom","3",colors.lightGray,"On Kill: Double","this Creatures Health"},{"Tri-Shroom","3",colors.purple,"Add 3 Fungus","from Destroy Pile"},{"Tri-Shroom","3",colors.purple,"Add 3 Fungus","from Destroy Pile"},{"Tri-Shroom","3",colors.purple,"Add 3 Fungus","from Destroy Pile"},{"Tri-Shroom","3",colors.purple,"Add 3 Fungus","from Destroy Pile"},{"M.9.","5",colors.lightGray," ","Opportunist 9"},{"M.9.","5",colors.lightGray," ","Opportunist 9"},{"Pixie","1",colors.lightGray," ","Opportunist 3"},{"Pixie","1",colors.lightGray," ","Opportunist 3"},{"Pixie","1",colors.lightGray," ","Opportunist 3"},{"Pixie","1",colors.lightGray," ","Opportunist 3"},{"Pathetic Shroom","0",colors.lightGray," "," "},{"Pathetic Shroom","0",colors.lightGray," "," "},{"Pathetic Shroom","0",colors.lightGray," "," "},{"Pathetic Shroom","0",colors.lightGray," "," "},{"dndmyce","3",colors.lightGray,"Destroy a","Fungus Creature"},{"dndmyce","3",colors.lightGray,"Destroy a","Fungus Creature"},{"Mommy Myce","2",colors.lightGray,"Create a","Pathetic Shroom"},{"Mommy Myce","2",colors.lightGray,"Create a","Pathetic Shroom"},{"Mommy Myce","2",colors.lightGray,"Create a","Pathetic Shroom"},{"Marketable Plushie","2",colors.lightGray,"Fuckit","WE BALLING"},{"Marketable Plushie","2",colors.lightGray,"Fuckit","WE BALLING"},{"Marketable Plushie","2",colors.lightGray,"Fuckit","WE BALLING"},{"Marketable Plushie","2",colors.lightGray,"Fuckit","WE BALLING"}}
 local deck3 = {"card1","card2","card3","card4","card5","card6","card7","card8","card9","card10","card11","card12","card13","card14","card15","card16","card17","card18","card19","card20","card21","card22","card23","card24","card25","card26","card27","card28","card29","card30","card31","card32","card33","card34","card35","card36","card37","card38","card39","card40"}
 local deck4 = {"Absorbing Slime","Absorbing Slime","Absorbing Slime","Tree Spirit","Wood Golem","Wood Golem","Wood Golem","Wood Golem","Blue Goo","Blue Goo","Paper Slime","Paper Slime","Spider Krab","Spider Krab","Quicksand Snake","Quicksand Snake","Nibblr","Steelworm","Steelworm","Steelworm","Petrifex","Petrifex","Petrifex","Petrifex","Thunder Scarab","Thunder Scarab","Saxtooth","Saxtooth","Invasive Weed","Invasive Weed","Obsidian Urchin","Obsidian Urchin","Metal Morpher","Metal Morpher","Weed Slime","Weed Slime","Imortalitea","Imortalitea","Imortalitea","Imortalitea"}
 local deck5 = {"Leach","Leach","Rusted Scraps","Rusted Scraps","Toxic Slime","Toxic Slime","Molten Scraps","Molten Scraps","Ghost Wyvern","Ghost Wyvern","Thunder Wyvern","Thunder Wyvern","Spring Ferret","Spring Ferret","Steel Chair","Steel Chair","Steel Chair","Dragon Claws","Dragon Claws","Dragon Claws","Iron Weld","Iron Weld","Lead Paint","Lead Paint","Magik Hat","Magik Hat","Echo Wyvern","Echo Wyvern","Steel Coated Drake","Steel Coated Drake","Hypothermic Dragon","Hypothermic Dragon","Acid Rain","Acid Rain","Weathering Rain","Weathering Rain","Vision Impaired Dragon","Vision Impaired Dragon","Sharpening Stone","Sharpening Stone"}
 local deck6 = {"Pebblin","Pebblin","Pebblin","Pebblin","Lithorok","Lithorok","Lithorok","Lithorok","Quicksand Snake","Quicksand Snake","Obsidian Urchin","Obsidian Urchin","Petrifex","Petrifex","Petrifex","Petrifex","Diamond Bison","Diamond Bison","Diamond Bison","Diamond Bison","Burrowing Lindwurm","Burrowing Lindwurm","Burrowing Lindwurm","Burrowing Lindwurm","Razor Wyrm","Razor Wyrm","Razor Wyrm","Razor Wyrm","Shalite","Shalite","Shalite","Stone Press","Stone Press","Stone Press","Mystic Pot","Mystic Pot","Tiltstone","Tiltstone","Obsidian Slime","Obsidian Slime"}
 local decks = {pop = deck1 , myce = deck2 , admin = deck3 , artic = deck4 , phantom = deck5 , brick = deck6}
 local prime_color = {pop = colors.orange , myce = colors.purple , admin = colors.white , artic = colors.green, phantom = colors.lightGray , brick = colors.orange}
 local second_color = {pop = colors.lightGray , myce = colors.yellow , admin = colors.white , artic = colors.orange , phantom = colors.orange , brick = colors.purple}
 local deck = decks[ tArgs[1] ]
 function draw_from_deck(deck)
  repeat
   slot = slot + 1
   until(hand[slot][1] == " ")
  hand[slot] = deck[value]
  slot = 0
  local draw = deck[value][1]
  textutils.slowPrint(draw)
  table.remove (deck,value)
 end
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
 monitor_right.clear()
      local cursor_x , cursor_y = term.getCursorPos()
   term.setCursorPos(23, 11)
   term.setTextColor( colors.white )
   term.write("draw")
   term.setCursorPos(cursor_x,cursor_y)
monitor_right.setTextColor(hand[page][3])
monitor_right.setCursorPos(25, 1)
monitor_right.write(">>")
monitor_right.setCursorPos(1, 1)
monitor_right.write("<<")
monitor_right.setCursorPos(10, 1)
monitor_right.write("remove")
monitor_right.setCursorPos(1,2)
monitor_right.write(hand[page][1])
monitor_right.setCursorPos(26,2)
monitor_right.write(hand[page][2])
monitor_right.setCursorPos(1,9)
monitor_right.write(hand[page][4])
monitor_right.setCursorPos(1,10)
monitor_right.write(hand[page][5])
  local event, button, x, y = os.pullEvent("mouse_click")
if x >= 23 and x <= 26 and y == 11 then
   if hand[1][1] ~= " " and hand[2][1] ~= " " and hand[3][1] ~= " " and hand[4][1] ~= " " and hand[5][1] ~= " " and hand[5][1] ~= " " and hand[6][1] ~= " " and hand[7][1] ~= " " and hand[8][1] ~= " " and hand[9][1] ~= " " and hand[10][1] ~= " " then
                local cursor_x , cursor_y = term.getCursorPos()
   term.setCursorPos(23, 11)
   term.setTextColor( colors.white )
   term.write("draw")
   term.setCursorPos(cursor_x,cursor_y)
      term.setTextColor( colors.red )
    textutils.slowPrint("FULL HAND")
    else
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
           local cursor_x , cursor_y = term.getCursorPos()
   term.setCursorPos(23, 11)
   term.setTextColor( colors.white )
   term.write("draw")
   term.setCursorPos(cursor_x,cursor_y)
     term.setTextColor( second_color[ tArgs[1] ] )
     draw_from_deck(deck)
      local cursor_x , cursor_y = term.getCursorPos()
   term.setCursorPos(23, 11)
   term.setTextColor( colors.white )
   term.write("draw")
   term.setCursorPos(cursor_x,cursor_y)
end
end
   else
  if x >= 25 and x <= 26 and y == 1  and page < 10 then
page = page + 1
else
if x >= 1 and x <= 2 and y == 1  and page > 1 then
page = page - 1
else
if x >= 10 and x <= 15 and y == 1 then
hand[page] = {}
hand[page][1] = " "
hand[page][2] = " "
hand[page][3] = colors.white
hand[page][4] = " "
hand[page][5] = " "
end
end
end
end
end
end
