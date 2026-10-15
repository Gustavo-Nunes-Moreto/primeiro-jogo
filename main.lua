require "palette"
require "sprites"
local jogador ={
x = 1,
y = 32,
speed = 20, 
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
    if ui.btn(2) then 
        jogador.x = jogador.x - jogador.speed
    end
    if ui.btn(3) then 
        jogador.x = jogador.x + jogador.speed
    end
    if ui.btn(0) then 
        jogador.y = jogador.y - jogador.speed
    end
    if ui.btn(1) then 
        jogador.y = jogador.y + jogador.speed
    end

    
    ui.rect(jogador.x, jogador.y, jogador.width, jogador.height, Palette.hex(0xFFFFFF))
end
