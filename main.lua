function love.load()
    pause = false

    selx = 9
    sely = 12

    pselx = 10
    psely = 13

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
    blank = love.graphics.newImage('pixil-frame-0 (19).png')
end

function love.update(dt)
   
end

function love.draw()
    if pause == false then
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
    else
        love.graphics.draw(blank, 0, 0)
        love.graphics.draw(blank, 0, 50)
        love.graphics.draw(blank, 0, 100)
        love.graphics.draw(blank, 0, 150)
        love.graphics.draw(sel, pselx, psely)
    end
end

function love.keypressed(key)
    if pause == false then
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

        if key == 'p' then
            pause = true
            psely = 13
        end

    else
        if key == 'w' then
            if psely > 13 then
                psely = psely - 50
            end
        end
        if key == 's' then
            if psely < 150 then
                psely = psely + 50
            end
        end
        if key == 'p' then
            pause = false
        end
    end

end