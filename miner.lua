function mineLine(error)
    mine = true
    
    vacios = 0
    contBlocks = 0
    while (mine)
    do
        if (not(turtle.detect()))
        then
            vacios = vacios + 1
        end
        if (vacios == error)
        then
            mine = false
        end
        turtle.dig()
        turtle.up()
    end
end
function mineDown(error)
    mine = true
    
    vacios = 0
    contBlocks = 0
    while (mine)
    do
        if (not(turtle.detect()))
        then
            vacios = vacios + 1
        end
        if (vacios == error)
        then
            mine = false
        end
        turtle.dig()
        turtle.down()
    end
end
function minarTodo(error)
    local mine = true
    while (mine)
    do
        mineLine(error)
        turtle.turnRight()
        if(turtle.detect())
        then
            mine = false
        end
        turtle.forward()
        turtle.turnLeft()
        while (turtle.detect())
        do
            turtle.up()
        end
        while (not(turtle.detect()))
        do
            turtle.down()
        end
        turtle.mineDown(error)
        turtle.turnRight()
        if(turtle.detect())
        then
            mine = false
        end
        turtle.forward()
        turtle.turnLeft()

    end
end