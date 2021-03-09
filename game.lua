game = {}

function game.load()
    selx = 9
    sely = 12
    
    glx = 6
    gly = 48

    rlx = 6
    rly = 144

    blx = 54
    bly = 240

    gl = love.graphics.newImage('pixil-frame-0 (14).png')
    rl = love.graphics.newImage('pixil-frame-0 (15).png')
    bl = love.graphics.newImage('pixil-frame-0 (16).png')
    sel = love.graphics.newImage('pixil-frame-0 (17).png')
    t = love.graphics.newImage('pixil-frame-0 (18).png')
end

function game.update()

end

function game.draw()
    love.graphics.draw(t, 0, 0)
    love.graphics.draw(t, 48, 0)
    love.graphics.draw(t, 0, 48)
    love.graphics.draw(t, 48, 48)
    love.graphics.draw(t, 0, 96)
    love.graphics.draw(t, 96, 0)
    love.graphics.draw(t, 48, 96)
    love.graphics.draw(t, 96, 96)

    love.graphics.draw(gl, glx, gly)
    love.graphics.draw(rl, rlx, rly)
    love.graphics.draw(bl, blx, bly)
    love.graphics.draw(sel, selx, sely)
end

function game.keypressed(key)
    if key == 'd' then
        selx = selx + 48
    end
    if key == 'a' then
        selx = selx - 48
    end
    if key == 'w' then
        sely = sely - 48
    end
    if key == 's' then
        sely = sely + 48
    end
end



return game