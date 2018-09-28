-----------------------------------------------------------------------------------------
--Title: Local Variables
--Name: Rhian Smith
-- Course: ICS2O
-- This program displays a rectangle and shows its area


 




local pentagonX = display.contentWidth * 1/4
local pentagonY = display.cntentHeight * 1/4
local verticesPentagon = { -100,100, 500,100, 100,-100, 100,300, -100,300 }
local myPentagon = display.newPolygon(pentagonX, pentagonY, verticesPentagon )

 myPentagon:setFillColor(0, 7, 6)
-----------------------------------------------------------------------------------------

