function love.load()
    x = 0
    gl = love.graphics.newImage('pixil-frame-0 (14).png')
    rl = love.graphics.newImage('pixil-frame-0 (15).png')
    bl = love.graphics.newImage('pixil-frame-0 (16).png')
end

function love.update(dt)
    x = x + 1
end

function love.draw()
    love.graphics.draw(gl, 500, 300)
    love.graphics.draw(rl, 500, 350)
    love.graphics.draw(bl, 500, 400)
end
