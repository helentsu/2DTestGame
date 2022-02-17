local player_x
local player_speed
local player_y

function love.load()
    player_x = 50
    player_speed = 100
    player_y = 500
end

function love.draw()
    love.graphics.line( 0, 500, 800, 500)
    love.graphics.line( player_x, player_y, player_x, player_y-50)
end

function love.keypressed(key, scancode, isrepeat)
    print(key)
    if key == "escape" then
        love.event.quit()
    end
end

function love.update(time)
    if love.keyboard.isDown("right") then
        player_x = player_x + player_speed*time
    end
    if love.keyboard.isDown("left") then
        player_x = player_x - player_speed*time
    end
    if love.keyboard.isDown("up") then
        player_y = player_y - player_speed*time
    end
    if love.keyboard.isDown("down") then
        player_y = player_y + player_speed*time
    end
end
