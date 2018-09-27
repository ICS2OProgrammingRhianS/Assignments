-----------------------------------------------------------------------------------------
--Title: Local Variables
--Name: Rhian Smith
-- Course: ICS2O
-- This program displays a rectangle and shows its area

local myPolygon
local widthOfPolygon = 60
local heightOfPolygon = 56

-- set the background colour of my screen.Remember that the colors are between 0 and 1
display.setDefault("background", 5/255, 56/255, 34/255)

-- to remove status bar
display.setStatusBar(display.HiddenStatusBar)


-- draw the Polygon that is half the width and height of the screen size.
 local myPolygon = display.newPolygon(0, 0, widthOfPolygon, heightOfPolygon)


-- anchor the polygon in the top left corner of the screen and set its (x,y) position
myPolygon.anchorX = 0
myPolygon.anchorY = 0
myPolygon.x = 20
myPolygon.y = 20
-----------------------------------------------------------------------------------------

