require "palette"
require "sprites"

function loop(frame)
    
    for i = 1, #Palette do
        local color = Palette[i]
        ui.palset(i - 1, color)
    end

    ui.clip(0,0,480,270)
    ui.camera(0,0)
    ui.cls(Palette.hex(#9CE752))
    
    ui.print("teste de codigo", 32, 32, Palette.hex(0xFFFFFF))
    local grade = {
    {1, 2, 1},
    {2, 1, 2},
    {1, 2, 1}
}
-- Desenha uma grade 3x3 onde cada célula tem 10x10 pixels
ui.grid(50, 50, 10, 10, grade)
end 
