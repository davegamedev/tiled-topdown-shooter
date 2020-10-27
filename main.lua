function love.load()
    windowWidth = 800
    windowHeight = 600
    windowTitle = "Tiled TopDown Shooter"
    love.window.setMode(windowWidth, windowHeight)
    love.window.setTitle(windowTitle)

    gameColors = require("libraries/colors")
    gameColors = colors
end

function love.update(dt)
end

function love.draw()
    love.graphics.setBackgroundColor(gameColors.cornflowerblue)
end

function love.keypressed(key)
    if key == "escape" then
        love.event.quit()
    end
end