-----------------------------------------------------------------------------------------
--Title: Local Variables
--Name: Rhian Smith
-- Course: ICS2O
-- This program displays a rectangle and shows its area

local myTriangle
local myPentagon
-- set the background colour of my screen.Remember that the colors are between 0 and 1
display.setDefault("background", 5/255, 56/255, 34/255)

--Remove the status bar
display,setStatusBar(display.HiddenStatusBar)

local verticesTriangle = { -100,-100, 100,-100, 0,100 }
local myTriangle = display.newPolygon(300, 200, verticesTriangle )

myTriangle:setFillColor(0, 7, 6)

-----------------------------------------------------------------------------------------

