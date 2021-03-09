h = require 'home'
g = require 'game'
p = require 'pause'

state = g

function love.load()
    state.load()
end

function love.update(dt)
   state.update()
end

function love.draw()
    state.draw() 
end

function love.keypressed(key)
    if key == 'escape' and state == g then
        state = p
        state.load()
    elseif key == 'escape' then
        state = g
        state.load()
    else
        state.keypressed(key)
    end

end