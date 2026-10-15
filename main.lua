require "palette"
require "sprites"

function loop(frame)
    
    for i = 1, #Palette do
        local color = Palette[i]
        ui.palset(i - 1, color)
    end

    ui.clip(0,0,480,270)
    ui.camera(0,0)
    ui.cls(Palette.hex(0x45283c))
    
    ui.print("teste de texto", 32, 32, Palette.hex(0xFFFFFF))
    local player = {
    x = 100,
    y = 100,
    speed = 200, -- Velocidade de movimento em pixels por segundo
    width = 40,
    height = 40
}

    function love.load()
        -- Configuração inicial da janela
        love.window.setMode(800, 600)
        love.window.setTitle("Movimentação de Personagem em Lua")
    end

    function love.update(dt)
        -- dt (delta time) garante que a velocidade seja constante independentemente dos FPS
        
        -- Movimentação para a Esquerda
        if love.keyboard.isDown("a") or love.keyboard.isDown("left") then
            player.x = player.x - player.speed * dt
        end

        -- Movimentação para a Direita
        if love.keyboard.isDown("d") or love.keyboard.isDown("right") then
            player.x = player.x + player.speed * dt
        end

    -- Movimentação para Cima
        if love.keyboard.isDown("w") or love.keyboard.isDown("up") then
            player.y = player.y - player.speed * dt
        end

    -- Movimentação para Baixo
        if love.keyboard.isDown("s") or love.keyboard.isDown("down") then
            player.y = player.y + player.speed * dt
        end
    end

    function love.draw()
    -- Desenha o personagem na tela (um quadrado azul)
        love.graphics.setColor(0.2, 0.6, 1)
        love.graphics.rectangle("fill", player.x, player.y, player.width, player.height)
    end
end 
