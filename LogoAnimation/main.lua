-----------------------------------------------------------------------------------------
--Rhian Smith
-- 
--hide status bar
display.setStatusBar(display.HiddenStatusBar)
-----------------------------------------------------------------------------------------
local songSound = audio.loadSound( "Sound/song.mp3" )
local songChannel
-----------------------------------------------------------------------------------------
local scrollSpeed1 = 1

local logo = display.newImageRect("Images/logo.png", 1250, 1250)

---- set the x and y for logo
logo.x = 10000
logo.y = display.contentHeight *3/3

logo.x = 50
logo.y = display.contentHeight / 3

logo.x = 50
logo.y = 50

-- function movelogo
-- input accepst  event listener
-- outPut none
-- makes logo move 
local function Movelogo(event)
	
	logo.x = logo.x + scrollSpeed1
	
	logo.y = logo.y + 5
	logo:scale(0.955, 0.955)
	 songChannel = audio.play(songSound)

end


Runtime:addEventListener("enterFrame", Movelogo)

-- say by pumpkin spice
textObjectSignature = display.newText("Pumpkin Spice ", 500, 500, nil, 100)

-----------------------------------------------------------------------------------------

-- Your code here