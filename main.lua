local player
local x = 200
local y = 300
local speed = 300
local scale = 0.5

function love.load()
    love.window.setTitle("Jogin")
    love.window.setMode(800, 600)
    player = love.graphics.newImage("assets/images/player.png")
end

function love.update(dt)
    local screenWidth = love.graphics.getWidth()
    local screenHeight = love.graphics.getHeight()

    local playerWidth = player:getWidth() * scale
    local playerHeight = player:getHeight() * scale

    if love.keyboard.isDown("right") then
        x = x + (speed * dt)
    end

    if love.keyboard.isDown("left") then
        x = x - (speed * dt)
    end

    if love.keyboard.isDown("down") then
        y = y + (speed * dt)
    end

    if love.keyboard.isDown("up") then
        y = y - (speed * dt)
    end

    if x < 0 then
        x = 0
    end

    if x > (screenWidth - playerWidth) then
        x = screenWidth - playerWidth
    end

      if y < 0 then
        y = 0
    end

    if y > (screenHeight - playerHeight) then
        y = screenHeight - playerHeight
    end

end

function love.draw()
    love.graphics.draw(player , x, y, 0, scale, scale)
end

