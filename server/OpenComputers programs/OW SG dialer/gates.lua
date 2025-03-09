local gates = {
    list = {
		{"Moon", "2APP-UEL-M7"},
		
		{"Mars", "CAPU-T94-CG"},
		{"Phobos", "2AO9-99V-GU"},
		{"Deimos", "0AO8-89W-XR"},
		
		{"Ceres", "0APO-TFG-C0"},
		{"Asteroids", "3FF2-BPI-21"},
		{"Callisto", "MAVQ-J8D-P9"},
		{"Ganymede", "QAO3-391-JT"},
		{"Europa", "YAPQ-VEJ-1X"},
        {"Ross128b", "2APP-UEL-9A"},
		
		{"Io", "U44U-FUU-T1"},
		{"Venus", "EAOX-X97-MS"},
		{"Mercury", "0APO-TFG-8N"},
		
		{"Oberon", "CAOT-U46-DG"},
		{"Miranda", "EAOX-X97-T5"},
		{"Titan", "YAPN-SFH-6G"},
		{"Enceladus", "YAPQ-VEJ-XJ"},
		{"Ross128ba", "2AP7-68X-H9"},
		
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