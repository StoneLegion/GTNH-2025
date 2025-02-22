local gates = {
    list = {
		{"Moon", "592W-I20-IC"},
		
		{"Mars", "H922-O2O-FD"},
		{"Phobos", "X91O-CY4-30"},
		{"Deimos", "T92M-F34-3S"},
		
		{"Ceres", "FFWJ-B8K-EI"},
		{"Asteroids", "T92M-F34-PU"},
		{"Callisto", "BFQA-LFS-39"},
		{"Ganymede", "NFQY-39Y-CG"},
		{"Europa", "ZFP7-69W-44"},
        {"Ross128b", "J92F-78B-XM"},
		
		{"Io", "1FIG-THV-0S"},
		{"Venus", "FFB4-II8-WJ"},
		{"Mercury", "DFB6-KI5-RD"},
		
		{"Oberon", "NFJS-4GC-FC"},
		{"Miranda", "ZFJ7-CF8-Q3"},
		{"Titan", "AAMF-HBX-4M"},
		{"Enceladus", "MAGT-8ID-UZ"},
		{"Ross128ba", "PFWR-J8B-V7"},
		
		{"Triton", "3FJ6-CA4-RB"},
		{"Proteus", "FFIQ-3GK-1F"},
		
		{"Kuiper Belt", "DFIP-2GL-Y8"},
		{"Haumea", "PFIA-NH1-W6"},
		{"Pluto", "BFB5-JI6-KS"},
		{"Makemake", "BFB5-JI6-R5"},
		
		{"A Centauri Bb", "DFB6-KI5-R5"},
		{"Tau Ceti E", "1FA3-BOL-QI"},
		{"Vega B", "ZELJ-SKU-9Z"},
		{"Barnarda C", "3EL9-CE4-Y3"},
		{"Barnarda E", "BEKO-YLK-6D"},
		{"Barnarda F", "3ELH-XKW-9Z"},
	}
}

function gates.getGateByName(name)
    for i = 1, #gates["list"], 1 do
        if gates["list"][i][1] == name then return gates["list"][i] end
    end
    return nil
end

function gates.getGateByAddress(addr)
	for i = 1, #gates["list"], 1 do
        if gates["list"][i][2] == addr then return gates["list"][i] end
    end
    return nil
end

return gates