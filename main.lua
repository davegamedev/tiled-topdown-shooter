function love.load()
    windowWidth = 800
    windowHeight = 600
    windowTitle = "Tiled TopDown Shooter"
    love.window.setMode(windowWidth, windowHeight)
    love.window.setTitle(windowTitle)

    gameColors = require("libraries/colors")
    gameColors = colors

    player = {}
    player.x = 100
    player.y = 100
    player.w = 50
    player.h = 50
    player.speed = 300
    player.color = gameColors.red
end

function love.update(dt)
    -- Player move
    if love.keyboard.isDown("d") then
        player.x = player.x + player.speed * dt
    end
    if love.keyboard.isDown("a") then
        player.x = player.x - player.speed * dt
    end
    if love.keyboard.isDown("s") then
        player.y = player.y + player.speed * dt
    end
    if love.keyboard.isDown("w") then
        player.y = player.y - player.speed * dt
    end
end

function love.draw()
    love.graphics.setBackgroundColor(gameColors.cornflowerblue)

    -- Player
    love.graphics.setColor(player.color, 1)
    love.graphics.rectangle("fill", player.x, player.y, player.w, player.h)
end

function love.keypressed(key)
    if key == "escape" then
        love.event.quit()
    end
end