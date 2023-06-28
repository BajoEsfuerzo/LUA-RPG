require("player")
require("object")
function love.load()
    Player:load()
    Object:load()
end
function love.update(dt)
    Player:update(dt)
    Object:update(dt)
end
function love.draw()
    Player:draw()
    Object:draw()
end