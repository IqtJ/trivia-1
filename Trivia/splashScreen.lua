-------------
--splash screen
------------------

----composer
local composer = require( "composer" )
 
local scene = composer.newScene()


-----forwards to screen 2

local function showCategoryScene()
	
	local options = {
		effect = "fade",
		time = 500
	}
	composer.gotoScene( "categoryScene", options)
end

------------event functions
function scene:create( event )
 
    local sceneGroup = self.view
    --creates the scene
end
 
 
-- show screen
function scene:show( event )
 
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
        -- about to come on screen
        --local background = display.newImageRect("assets/splash.png", display.contentWidth, display.contentHeight)
        --background.x = display.contentCenterX
        --background.y = display.contentCenterY
        --background.id = "splash bg"
        --sceneGroup:insert(background)

        local splashText = display.newText( "splash", display.contentCenterX, display.contentCenterY - 200, native.labelFont, 20 )
		splashText.id = "splash text"
		splashText:setFillColor( 0, 0, 0 )
		sceneGroup:insert(splashText)

 
    elseif ( phase == "did" ) then
        -- on screen
 
    end
end
 
 
-- hide()
function scene:hide( event )
 
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
        -- about to go off screen 
    elseif ( phase == "did" ) then
        -- entirely off screen
    end
end
 
 
-- destroy()
function scene:destroy( event )
 
    local sceneGroup = self.view
    -- removes scene
 
end
 
 
-- -----------------------------------------------------------------------------------
-- Scene event function listeners
-- -----------------------------------------------------------------------------------
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )
-- -----------------------------------------------------------------------------------
 
return scene
