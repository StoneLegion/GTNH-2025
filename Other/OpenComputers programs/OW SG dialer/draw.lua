local draw = {}

function draw.rect(gpu, x, y, w, h, t, tcol, bcol)
    local oldFColor = gpu.setForeground(tcol)
    local oldBColor = gpu.setBackground(bcol)
    gpu.fill(x, y, w, h, t)
    gpu.setForeground(oldFColor)
    gpu.setBackground(oldBColor)
end

function draw.text(gpu, x, y, t, fc, bc)
    local oldFColor = gpu.setForeground(fc)
    local oldBColor = gpu.setBackground(bc)
    gpu.set(x, y, t)
    gpu.setForeground(oldFColor)
    gpu.setBackground(oldBColor)
end

function draw.border(unicode, gpu, title, x, y, w, h, tcol, bcol)
	draw.rect(gpu, x + 1, y, w - 1, 1, unicode.char(9552), tcol, bcol)
	draw.rect(gpu, x + 1, y + h, w - 1, 1, unicode.char(9552), tcol, bcol)
	
	draw.rect(gpu, x, y + 1, 1, h - 1, unicode.char(9553), tcol, bcol)
	draw.rect(gpu, x + w, y + 1, 1, h - 1, unicode.char(9553), tcol, bcol)
	
	draw.text(gpu, x, y, unicode.char(9556), tcol, bcol)
	draw.text(gpu, x + w, y, unicode.char(9559), tcol, bcol)
	
	draw.text(gpu, x, y + h, unicode.char(9562), tcol, bcol)
	draw.text(gpu, x + w, y + h, unicode.char(9565), tcol, bcol)
	
	draw.text(gpu, x + ((w / 2) - (string.len(title) / 2)), y, title, tcol, bcol)
end

function draw.img(gpu, x, y, data)
    for row = 1, #data, 1 do
        for col = 1, #data[row], 1 do
            draw.rect(gpu, x + col - 1, y + row - 1, 1, 1, " ", data[row][col], data[row][col])
        end
    end
end

function draw.button(gpu, text, x, y, w, h, tcol, bcol)
    draw.rect(gpu, x, y, w, h, " ", tcol, bcol)
    draw.text(gpu, x + (w / 2) - (string.len(text) / 2), y + math.floor((h / 2)), text, tcol, bcol)
end

return draw