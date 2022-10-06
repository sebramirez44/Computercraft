contRelleno = 0
slot = 1
function pared(length)
    local blocks = 0
    while(blocks < length)
    do
        turtle.placeDown()
        if (not (blocks == length-1))
        then
            turtle.forward()
        end
        block = blocks + 1
        checkSlot()
    end
end
function paredPuerta(length)
    local blocks = 0
    local skip = 0
    while(blocks < length)
    do
        if (not (length/2 % 2 == 0))
        then
            skip = length/2-0.5
        end
        if (not(blocks == skip))
        then
            turtle.placeDown()
        end
        if (not(blocks == length-1))
        then
            turtle.forward()
        end
        blocks = blocks + 1
    end
end
function layerP(length)
    turtle.up()
    paredPuerta(length)
    turtle.turnLeft()
    pared(length)
    turtle.turnLeft()
    pared(length)
    turtle.turnLeft()
    pared(length)
    turtle.turnLeft()
end
function layer(length)
    turtle.up()
    for i = 1, 4, 1
    do
        pared(length)
        turtle.turnLeft()
    end
end
function relleno(length)
    if(contRelleno == 0)
    then
        turtle.forward()
        turtle.turnLeft()
        pared(length-1)
        turtle.forward()
    else
    if (contRelleno % 2 == 0)
    then
        turtle.turnLeft()
        turtle.forward()
        turtle.turnLeft()
        pared(length-1)
        turtle.forward()
    else
        turtle.turnRight()
        turtle.forward()
        turtle.turnRight()
        pared(length-1)
        turtle.forward()
    end
    end
    contRelleno = contRelleno + 1
end
function techo(length)
    for i = 1, length-2, 1
    do
        relleno(length)
    end
end
function checkSlot()
    if (turtle.getItemCount(slot) == 0)
    then
        slot = slot + 1
        turtle.select(slot)
    end
end
layerP(5)
layerP(5)
layer(5)
layer(5)
techo(5)