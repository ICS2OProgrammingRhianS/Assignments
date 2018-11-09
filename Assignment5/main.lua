-----------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------
-- Title:MathQuiz
-- Name: Rhian Smith
-- Course: ICS2O

-----------------------------------------------------------------------------------------

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)



-- set the background colour
display.setDefault("background", 0/255, 0/255, 70/255)


-----------------------------------------------------------------------------------------
-- LOCAL VARIABLES
-----------------------------------------------------------------------------------------

-- creat local variables
local questionObject
local correctObject
local incorrectObject
local numericField
local randomNumber1
local randomNumber2

local userAnswer
local correctAnswer
local incorrectAnswer
local randomOperator
local textObjectPoints
local numberOfPoints = 0

local totalSeconds = 10
local secondsLeft = 10
local clockText
local countDownTimer

local lives = 3
local heart1
local heart2
local heart3




-----------------------------------------------------------------------------------------
-- Sounds
-----------------------------------------------------------------------------------------
	-- Set sound
local correctSound = audio.loadSound( "Sounds/right.mp3" )
local correctSoundChannel

local incorrectSound = audio.loadSound( "Sounds/wrong.mp3" )
local incorrectSoundChannel

local gameOverSound = audio.loadSound( "Sounds/gameover.mp3" )
local gameOverSoundChannel

-----------------------------------------------------------------------------------------
-- LOCAL FUNCTIONS
-----------------------------------------------------------------------------------------

local function AskQuestion()
	-- generate 2 random numbers between a max. and a min. number
	randomOperator = math.random(1, 4)
	randomNumber1 = math.random(1, 10)
	randomNumber2 = math.random(1, 20)
	randomNumber3 = math.random(1, 20)
	randomNumber4 = math.random(1, 100)

	if (randomOperator == 1) then
		correctAnswer = randomNumber1 + randomNumber2

		-- create question in text object
		questionObject.text = randomNumber1 .. " + " .. randomNumber2 .. " = "

	elseif (randomOperator == 2) then
	    correctAnswer = randomNumber1 - randomNumber2

	    -- create question in text object
	    questionObject.text = randomNumber1 .. " - " .. randomNumber2 .. " = "

	elseif (randomOperator == 3) then
	    correctAnswer = randomNumber1 * randomNumber2

	    -- create question in text object
	    questionObject.text = randomNumber1 .. " * " .. randomNumber2 .. " = "

	elseif (randomOperator == 4) then
		correctAnswer = randomNumber1 + randomNumber2

		-- create question in text object
		questionObject.text = randomNumber1 .. " / " .. randomNumber2 .. " = "

    end
end

local function HideCorrect()
	correctObject.isVisible = false
	AskQuestion()
	-- reset the number of seconds left
	
	

end

local function HideIncorrect()
	incorrectObject.isVisible = false
	AskQuestion()
-- reset the number of seconds left
	secondsLeft = totalSeconds
	lives = lives - 1


	
end


local function UpdateHeart()
		
	-- make hearts disaper

	if (lives == 2) then
		heart3.isVisible = false

	elseif (lives == 1) then
	    heart2.isVisible = false

	elseif (lives == 0) then
	    heart2.isVisible = false

	    -- make the game over visible
	    gameover.isVisible = true

	    gameOverSoundChannel = audio.play(gameOverSound)

	    -- Make points invisible
	    textObjectPoints.isVisible = false

	    -- make question invisible
	    	questionObject.isVisible = false
	end    	
end



local function UpdateTime()
-- decrement the number of seconds
	secondsLeft = secondsLeft - 1

	-- display the number of seconds left in the clock object
	clockText.text = secondsLeft .. ""

		if (secondsLeft == 0 ) then
			-- reset the number of seconds left
			secondsLeft = totalSeconds
			lives = lives - 1
			print(lives)
			UpdateHeart()	
			

		end
	end


		

-- function that calls the timer
local function StartTimer()
	-- creat a countdown timer that loops infinitely
	countDownTimer = timer.performWithDelay( 1000, UpdateTime, 0)
end


local function NumericFieldListener( event )

	-- User begins editing "numericField"
	if ( event.phase == "began" ) then

		-- clear text field
		event.target.text = ""

    elseif event.phase == "submitted" then

    	-- when the answer is submitted (enter key is pressed) set user input to user's answer
        userAnswer =  tonumber (event.target.text)

        -- if the users answer and the correct answer are the same:
        if (userAnswer == correctAnswer) then
        	correctObject.isVisible = true
        	incorrectObject.isVisible = false
        	-- play the sound
			correctSoundChannel = audio.play(correctSound)
        	timer.performWithDelay(2000, HideCorrect)
        	numberOfPoints = numberOfPoints + 1

        	textObjectPoints.text = "points =" .. numberOfPoints
        	


        else
        	correctObject.isVisible =false
        	incorrectObject.isVisible = true
        	timer.performWithDelay(2000, HideIncorrect)
        	lives = lives - 1
        	UpdateHeart()
        	-- play the sound
			incorrectSoundChannel = audio.play(incorrectSound)


				
        end

        event.target.text = ""

    end

end

-----------------------------------------------------------------------------------------
-- OBJECT CREATION
-----------------------------------------------------------------------------------------

-- create the lives to display on the screen
heart1 = display.newImageRect("Images/heart.png", 100, 100)
heart1.x = display.contentWidth * 7 / 8
heart1.y = display.contentHeight * 6 / 8

heart2 = display.newImageRect("Images/heart.png", 100, 100)
heart2.x = display.contentWidth * 6 / 8
heart2.y = display.contentHeight * 6 / 8

heart3 = display.newImageRect("Images/heart.png", 100, 100)
heart3.x = display.contentWidth * 5 / 8
heart3.y = display.contentHeight * 6 / 8

clockText = display.newText("", display.contentWidth * 5 / 8, display.contentHeight * 4 / 8, nil, 50)

gameover = display.newImageRect("Images/gameover.png", display.contentWidth, display.contentHeight)
gameover.x = 512
gameover.y = 384
gameover.isVisible = false

youWin = display.newImageRect("Images/youWin.png", display.contentWidth, display.contentHeight)
youWin.x = 512
youWin.y = 384
youWin.isVisible = false

-- create points box and make it visible
textObjectPoints = display.newText( "Points = ".. numberOfPoints, 750, 275, nil, 50 )
textObjectPoints:setTextColor(100/255, 169/255, 100/255)

-- displays a question and set the colour
questionObject = display.newText( "", display.contentWidth/3, display.contentHeight/2, nil, 50 )
questionObject:setTextColor(155/255, 42/255, 198/255)

-- creat the correct text object and make it invidible
correctObject = display.newText(  "Correct!", display.contentWidth/2, display.contentHeight*2/3, nil, 50 )
correctObject:setTextColor(155/255, 200/255, 198/255)
correctObject.isVisible = false


-- creat the incorrect text object and make it invidible
incorrectObject = display.newText(  "incorrect!", display.contentWidth/2, display.contentHeight*2/3, nil, 50 )
incorrectObject:setTextColor(100/255, 200/255, 85/255)
incorrectObject.isVisible = false

-- Create numeric field
numericField = native.newTextField( display.contentWidth/2, display.contentHeight/2, 150, 80 )
numericField.inputType = "number"

-- add the event listener for the numeric Field
numericField:addEventListener( "userInput", NumericFieldListener )

-----------------------------------------------------------------------------------------
-- FUNCTION CALLS
-----------------------------------------------------------------------------------------

-- call the function to ask the quetsion
AskQuestion()

StartTimer()






