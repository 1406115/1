local s0 = peripheral.wrap("scroller_0")
local s1 = peripheral.wrap("scroller_1")
local s2 = peripheral.wrap("scroller_2")
local s3 = peripheral.wrap("scroller_3")
local s4 = peripheral.wrap("scroller_4")
local s5 = peripheral.wrap("scroller_5")
local s6 = peripheral.wrap("scroller_6")
local s7 = peripheral.wrap("scroller_7")
local s8 = peripheral.wrap("scroller_8")
local s9 = peripheral.wrap("scroller_9")
local s10 = peripheral.wrap("scroller_10")
local s11 = peripheral.wrap("scroller_11")
local bot = peripheral.wrap("animatronic_0")
s0.setLimit(180)
s1.setLimit(180)
s2.setLimit(180)
s3.setLimit(180)
s4.setLimit(180)
s5.setLimit(180)
s6.setLimit(180)
s7.setLimit(180)
s8.setLimit(180)
s9.setLimit(180)
s10.setLimit(180)
s11.setLimit(180)
s0.toggleMinusSpectrum(true)
s1.toggleMinusSpectrum(true)
s2.toggleMinusSpectrum(true)
s3.toggleMinusSpectrum(true)
s4.toggleMinusSpectrum(true)
s5.toggleMinusSpectrum(true)
s6.toggleMinusSpectrum(true)
s7.toggleMinusSpectrum(true)
s8.toggleMinusSpectrum(true)
s9.toggleMinusSpectrum(true)
s10.toggleMinusSpectrum(true)
s11.toggleMinusSpectrum(true)
while true do
local n0 = s0.getValue()
local n1 = s1.getValue()
local n2 = s2.getValue()
local n3 = s3.getValue()
local n4 = s4.getValue()
local n5 = s5.getValue()
local n6 = s6.getValue()
local n7 = s7.getValue()
local n8 = s8.getValue()
local n9 = s9.getValue()
local n10 = s10.getValue()
local n11 = s11.getValue()
sleep(0.001)
bot.setHeadRot(n0,n1,n2)
bot.setBodyRot(n3,n4,n5)
bot.setLeftArmRot(n6,n7,n8)
bot.setRightArmRot(n9,n10,n11)
bot.push()
end
