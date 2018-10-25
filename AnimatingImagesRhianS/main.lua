-----------------------------------------------------------------------------------------
-- Title: AnimatingImages
-- Name: Rhian Smith
-- Course: ICS2O
-- This program moves images in diferent derections.


--hide status bar
display.setStatusBar(display.HiddenStatusBar)

-- set background image and my cats
local backgroundImage = display.newImageRect("Images/space.jpg", 2048, 1536)
local Cat1 = display.newImageRect("Images/Cat1.png", 250, 400)
local Cat2 = display.newImageRect("Images/Cat2.png", 300, 300)
local Cat3 = display.newImageRect("Images/Cat3.png", 200, 200)
local scrollSpeed1 = 1
local scrollSpeed2 = 5

-- set the x and y for each cat
Cat1.x = display.contentWidth
Cat1.y = display.contentHeight*1/3

Cat2.x = 0
Cat2.y = display.contentHeight / 3

Cat3.x = 0
Cat3.y = 0

-- function moveCat1
-- input accepst  event listener
-- outPut none
-- makes cat1 move 
local function MoveCat1(event)
	
	Cat1.x = Cat1.x - scrollSpeed1
	
	Cat1.y = Cat1.y + 0.01
	Cat1:scale(0.995, 0.995)
end


Runtime:addEventListener("enterFrame", MoveCat1)

-- function moveCat2
-- input accepst  event listener
-- outPut none
-- makes cat2 move 

local function MoveCat2(event)
	
	Cat2.x = Cat2.x + scrollSpeed2
	
	Cat2.y = Cat2.y - 0.0000000009
end

Runtime:addEventListener("enterFrame", MoveCat2)

-- function moveCat3
-- input accepst  event listener
-- outPut none
-- makes cat3 move 

local function MoveCat3(event)
	
	Cat3.x = Cat3.x + scrollSpeed1
	Cat3.y = Cat3.y + scrollSpeed1
	
	Cat3.y = Cat3.y + 0.01
end
Runtime:addEventListener("enterFrame", MoveCat3)

-- say by Rhian
textObjectSignature = display.newText("By Rhian", 500, 500, nil, 50)

