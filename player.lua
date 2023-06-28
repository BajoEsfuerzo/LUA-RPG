Player ={}
function Player:load()
    self.x = love.graphics.getWidth()/2
    self.y = love.graphics.getHeight()/2
    self.radius = 10
    self.speed = 3
end
function Player:update(dt)
    self:move(dt)  
    self:checkBoundariesX()
    self:checkBoundariesY()
end
function Player:move(dt)
    if love.keyboard.isDown("w") then
        self.y = self.y - self.speed + dt
    end    
    if love.keyboard.isDown("s") then
        self.y = self.y + self.speed + dt
    end    
    if love.keyboard.isDown("a") then
        self.x = self.x - self.speed + dt
    end    
    if love.keyboard.isDown("d") then
        self.x = self.x + self.speed + dt
    end  
end
function Player:checkBoundariesY()
    if self.y < self.radius then
        self.y = self.radius
    elseif self.y + self.radius > love.graphics.getHeight() then
        self.y = love.graphics.getHeight() - self.radius
    end
end
function Player:checkBoundariesX()
    if self.x < self.radius then
        self.x = self.radius
    elseif self.x + self.radius > love.graphics.getWidth() then
        self.x = love.graphics.getWidth() - self.radius
    end
end
function Player:draw()
    love.graphics.circle( "fill", self.x, self.y, self.radius)
end