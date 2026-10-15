require "palette"
require "sprites"
local jogador ={
x = 1,
y = 32,
speed = 200, 
width = 4,
height = 15
}
function loop(frame)
    
    for i = 1, #Palette do
        local color = Palette[i]
        ui.palset(i - 1, color)
    end

    ui.clip(0,0,480,270)
    ui.camera(0,0)
    ui.cls(Palette.hex(0x02DF))
    
    ui.print("teste de texto", 32, 32, Palette.hex(0xFFFFFF))
    if ui.btn(2) then -- Esquerda (Left)
        bola.x = bola.x - bola.speed
    end
    if ui.btn(3) then -- Direita (Right)
        bola.x = bola.x + bola.speed
    end
    if ui.btn(0) then -- Cima (Up)
        bola.y = bola.y - bola.speed
    end
    if ui.btn(1) then -- Baixo (Down)
        bola.y = bola.y + bola.speed
    end

    -- 2. DESENHO DO OBJETO
    ui.rect(bola.x, bola.y, bola.width, bola.height, Palette.hex(0xFF0000))
end
