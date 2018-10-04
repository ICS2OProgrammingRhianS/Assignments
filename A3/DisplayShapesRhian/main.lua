-----------------------------------------------------------------------------------------
--Title: Local Variables
--Name: Rhian Smith
-- Course: ICS2O
-- This program displays a rectangle and shows its area


 

local myTriangle
local myPentagon
local textObject
-- set the background colour of my screen.Remember that the colors are between 0 and 1
display.setDefault("background", 5/255, 56/255, 34/255)

-- to remove status bar
display.setStatusBar(display.HiddenStatusBar)

local verticesTriangle = { -100,-100, 100,-100, 0,100 }
local myTriangle = display.newPolygon(300, 200, verticesTriangle )

-- Say that it is your triangle
 textObject = display.newText("Triangle", 320, 340, nil, 50) 

-- set color
myTriangle:setFillColor(0, 0, 6)

-- set the width of the border
myTriangle.strokeWidth = 20

-- set the colour of the border
myTriangle:setStrokeColor(0, 1, 0)

 local verticesPentagon = { -100,-100, -90,100, 90,100, 100,-100, 0,-150  } 
 local myPentagon = display.newPolygon(750, 200, verticesPentagon )

-- set the colour
 myPentagon:setFillColor(8, 0, 0)

 -- set the width of the border
 myPentagon.strokeWidth = 20
 
 -- set the color of border
 myPentagon:setStrokeColor(0, 0, 6)

 -- Say that it is your pentagon
 textObject = display.newText("Pentagon", 765, 380, nil, 50) 

 local verticesTrapazoid = { -150,100, 150,100, 200,-4, -200,-4 } 
 local myTrapazoid = display.newPolygon(1250, 200, verticesTrapazoid )
 
 -- set the color
 myTrapazoid:setFillColor(0, 10, 0)
 
 -- set the width of the border
 myTrapazoid.strokeWidth = 20

 -- set the colour of the border
 myTrapazoid:setStrokeColor(8, 0, 0)
 -- Say that it is your pentagon
 textObject = display.newText("Trapazoid", 1250, 350, nil, 50) 



-----------------------------------------------------------------------------------------

