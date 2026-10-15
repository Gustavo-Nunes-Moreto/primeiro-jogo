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
    x = 100,
    y = 100,
    speed = 200, 
    width = 400,
    height = 400
    }
    ui.print("X: " .. bola.x, 32, 48, Palette.hex(0x7FFF))
    ui.print("Y: " .. bola.y, 32, 64, Palette.hex(0x7FFF))
end 
