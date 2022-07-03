LARG_TELA = 320
ALT_TELA = 480
MAX_METEOROS = 20
--Aviao
aviao = {
    src = "assets/14bis.png",
    largura = 64,
    altura = 64,
    x = LARG_TELA / 2 - 32,
    y = ALT_TELA - 64,
}

function destroyAviao()
    aviao.src = "assets/explosao_nave.png"
    aviao.img = love.graphics.newImage(aviao.src)
    aviao.largura = 55
    aviao.altura = 63
end

function colisao(X1, Y1, L1, A1, X2, Y2, L2, A2)
    return X2 < X1 + L1 and
        X1 < X2 + L2 and
        Y1 < Y2 + A2 and
        Y2 < Y1 + A1
end

meteoros = {}

function removeMeteoros()
    for i = #meteoros, 1, -1 do
        if meteoros[i].y > ALT_TELA then
            table.remove(meteoros, i)
        end
    end
end

function criaMeteoro()
    meteoro = {
        x = math.random(LARG_TELA),
        y = -64,
        largura = 50,
        altura = 44,
        velocities = math.random(1, 3),
        deslocamento_horizontal = math.random(-1, 1),
    }
    table.insert(meteoros, meteoro)
end

function moveMeteoro()
    for k, meteoro in pairs(meteoros) do
        meteoro.y = meteoro.y + meteoro.velocities
        meteoro.x = meteoro.x + meteoro.deslocamento_horizontal
    end
end

function moveAviao()
    if love.keyboard.isDown('w') or love.keyboard.isDown('up') then
        aviao.y = aviao.y - 1
    end
    if love.keyboard.isDown('s') or love.keyboard.isDown('down') then
        aviao.y = aviao.y + 1
    end
    if love.keyboard.isDown('a') or love.keyboard.isDown('left') then
        aviao.x = aviao.x - 1
    end
    if love.keyboard.isDown('d') or love.keyboard.isDown('right') then
        aviao.x = aviao.x + 1
    end
end

function checkColisao()
    for k, meteoro in pairs(meteoros) do
        if colisao(meteoro.x, meteoro.y, meteoro.largura, meteoro.altura, aviao.x, aviao.y, aviao.largura, aviao.altura) then
            destroyAviao()
            FIM_JOGO = true
        end
    end
end

function love.load()
    love.window.setMode(LARG_TELA, ALT_TELA, { resizable = false })
    love.window.setTitle("Planning versus Meteoro")


    math.randomseed(os.time())

    background = love.graphics.newImage("assets/background.png")

    aviao.img = love.graphics.newImage(aviao.src)

    meteoroImg = love.graphics.newImage("assets/meteoro.png")
end

function love.update(dt)
    if not FIM_JOGO then
        if love.keyboard.isDown('w', 'up', 's', 'down', 'a', 'left', 'd', 'right') then
            moveAviao()
        end

        removeMeteoros()
        if #meteoros < MAX_METEOROS then
            criaMeteoro()
        end
        moveMeteoro()

        checkColisao()
    end
end

function love.draw()
    love.graphics.draw(background, 0, 0)
    love.graphics.draw(aviao.img, aviao.x, aviao.y)

    for k, meteoro in ipairs(meteoros) do
        love.graphics.draw(meteoroImg, meteoro.x, meteoro.y)
    end

end
