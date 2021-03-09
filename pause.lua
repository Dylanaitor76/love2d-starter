pause = {}



function pause.load()
    pselx = 10
    psely = 13
    sel = love.graphics.newImage('pixil-frame-0 (17).png')
    blank = love.graphics.newImage('pixil-frame-0 (19).png')
end

function pause.update()

end

function pause.draw()
    love.graphics.draw(blank, 0, 0)
    love.graphics.draw(blank, 0, 50)
    love.graphics.draw(blank, 0, 100)
    love.graphics.draw(blank, 0, 150)
    love.graphics.draw(sel, pselx, psely)
end

function pause.keypressed(key)
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
end

return pause