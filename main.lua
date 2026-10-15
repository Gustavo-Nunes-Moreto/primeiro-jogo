require "palette"
require "sprites"

function loop(frame)
    
    for i = 1, #Palette do
        local color = Palette[i]
        ui.palset(i - 1, color)
    end

    ui.clip(0,0,480,270)
    ui.camera(0,0)
    ui.cls(Palette.hex(0x02DF))
    
    ui.print("teste de texto", 32, 32, Palette.hex(0xFFFFFF))
    local bola ={
    x = 1,
    y = 320,
    speed = 200, 
    width = 4,
    height = 15
    }
    ui.rect(bola.x, bola.y, bola.width, bola.height, Palette.hex(0xFFFFFF))
end 
