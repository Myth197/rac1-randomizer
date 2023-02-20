require 'tables_id'

-- associate categories in settings with substrings
local settings = {
	standard='casual',
-- miscellaneous
	skips='skip',
	packless='packless',
	decoy_clips='decoy',
	magnewalk='magnewalk',
-- thruster-pack movement
	infinite_side_flips='isf',
	ground_pound_cancels='gpc',
	thruster_pack_long_jump='tplj',
-- heli-pack movement
	infinite_long_jumps='ilj',
	sinaflips='sinaflip',
	slope_intercept='slope',
	neutral_long_jumps='nlj',
}

-- to add new strats, edit this
local strats = {
	-- VELDIN 1
	novalis={
		casual={},
	},
	bomb_glove={
		casual={},
	},

	-- NOVALIS
	aridia={
		casual={},
	},
	kerwan={
		casual={},
	},
	pyrociter={
		casual={},
	},

	-- ARIDIA
	sonic_summoner={
		casual={id.zoomerator},
	},
	trespasser={
		casual={id.swingshot},
		ilj={id.heli_pack},
		sinaflip={id.heli_pack},
		isf={id.thruster_pack},
	},
	hoverboard={
		casual={},
	},

	-- KERWAN
	eudora={
		casual_heli={id.heli_pack},
        casual_thruster={id.thruster_pack},
		packless={},
	},
	heli_pack={
		casual={},
	},
	swingshot={
		casual={},
	},
	blaster={
		casual={},
	},

	-- EUDORA
	blarg={
		casual_heli={id.heli_pack, id.swingshot, id.trespasser},
        casual_thruster={id.thruster_pack, id.swingshot, id.trespasser},
		packless={},
		skip_heli={id.heli_pack},
		skip_thruster={id.thruster_pack},
		decoy={id.decoy_glove},
	},
	glove_of_doom={
		casual={},
	},
	suck_cannon={
		casual_heli={id.heli_pack},
		casual_thruster={id.thruster_pack},
	},

	-- RILGAR
	umbris={
		casual_heli={id.heli_pack, id.swingshot, id.hydrodisplacer},
        casual_thruster={id.thruster_pack, id.swingshot, id.hydrodisplacer},
		packless={},
		sinaflip={id.heli_pack},
		ilj={id.heli_pack},
		isf={id.thruster_pack},
	},
	zoomerator={
		casual_heli={id.heli_pack, id.hoverboard},
        casual_thruster={id.thruster_pack, id.hoverboard},
		packless_hoverboard={id.hoverboard},
		packless_clip={id.decoy_glove},
	},
	mine_glove={
		casual={},
	},
	ryno={
		casual={id.metal_detector},
	},

	-- BLARG
	rilgar={
		casual={},
	},
	hydrodisplacer={
		casual={id.trespasser},
		skip_heli = {id.heli_pack},
		skip_thruster = {id.thruster_pack},
		decoy={id.decoy_glove},
	},
	grindboots={
		casual={id.swingshot},
	},
	taunter={
		casual={},
	},

	-- UMBRIS
	batalia={
		casual_heli={id.heli_pack, id.swingshot, id.hydrodisplacer},
        casual_thruster={id.thruster_pack, id.swingshot, id.hydrodisplacer},
		packless={id.swingshot},
		ilj={id.heli_pack},
		sinaflip={id.heli_pack},
		isf={id.thruster_pack},
	},

	-- BATALIA
	gaspar={
		casual={id.grindboots},
		slope_heli={id.heli_pack},
	},
	orxon={
		casual={},
	},
	metal_detector={
		casual={id.magneboots},
		gpc={id.thruster_pack},
		tplj={id.thruster_pack},
		skip_heli={id.heli_pack},
		skip_thruster={id.thruster_pack},
	},
	devastator={
		casual={},
	},

	-- GASPAR
	pilots_helmet={
		casual={},
	},
	walloper={
		casual={},
	},

	-- ORXON
	pokitaru={
		casual={},
	},
	hoven={
		casual_heli={id.heli_pack, id.o2_mask, id.swingshot, id.magneboots},
        casual_thruster={id.thruster_pack, id.o2_mask, id.swingshot, id.magneboots},
		magnewalk_heli={id.heli_pack, id.o2_mask, id.magneboots},
		magnewalk_thruster={id.thruster_pack, id.o2_mask, id.magneboots},
		packless={id.decoy_glove, id.swingshot, id.magneboots},
	},
	magneboots={
		casual={},
	},
	premium_nanotech={
		casual_heli={id.heli_pack, id.o2_mask},
		casual_thruster={id.thruster_pack, id.o2_mask},
		clank_clip={},
		decoy={id.decoy_glove},
	},
	ultra_nanotech={
		casual_heli={id.heli_pack, id.o2_mask, id.premium_nanotech},
		casual_thruster={id.thruster_pack, id.o2_mask, id.premium_nanotech},
		clank_clip={id.premium_nanotech},
		decoy={id.decoy_glove},
	},
	visibomb={
		casual={},
	},

	-- POKITARU
	thruster_pack={
		casual={},
	},
	o2_mask={
		casual={id.thruster_pack, id.pilots_helmet},
		decoy={id.decoy_glove, id.pilots_helmet},
	},
	persuader={
		casual={id.hydrodisplacer, id.trespasser, id.raritanium},
		skip_hydro={id.hydro_pack, id.o2_mask, id.raritanium},
		decoy={id.decoy_glove, id.trespasser, id.raritanium},
	},
	decoy_glove={
		casual={},
	},

	-- HOVEN
	gemlik={
		casual={},
	},
	hydro_pack={
		casual={id.hydrodisplacer},
		sinaflip={id.heli_pack},
		ilj={id.heli_pack},
		isf={id.thruster_pack},
	},
	raritanium={
		casual_heli={id.heli_pack, id.swingshot},
		casual_thruster={id.thruster_pack, id.swingshot},
		sinaflip={id.heli_pack},
		ilj={id.heli_pack},
		isf={id.thruster_pack},
		packless={id.swingshot},
	},
	drone_device={
		casual={},
	},

	-- GEMLIK
	oltanis={
		casual={id.swingshot, id.trespasser, id.magneboots, id.visibomb},
		skip_thruster={id.thruster_pack},
		decoy={id.decoy_glove, id.swingshot, id.magneboots},
	},

	-- OLTANIS
	quartu={
		casual={id.grindboots},
		magnewalk={id.magneboots},
	},
	pda={
		casual={id.magneboots},
	},
	tesla_claw={
		casual={},
	},
	morph_o_ray={
		casual={id.swingshot},
	},

	-- QUARTU
	kalebo={
		casual={id.swingshot},
		nlj={id.heli_pack},
		tplj={id.thruster_pack},
	},
	fleet={
		casual={id.thruster_pack, id.swingshot, id.hologuise},
		decoy_heli={id.heli_pack, id.decoy_glove},
		decoy_thruster={id.thruster_pack, id.decoy_glove},
	},
	bolt_grabber={
		casual={id.hydro_pack, id.o2_mask},
		slope_heli={id.heli_pack},
	},

	-- KALEBO
	hologuise={
		casual_heli={id.heli_pack, id.swingshot, id.grindboots, id.hoverboard},
        casual_thruster={id.thruster_pack, id.swingshot, id.grindboots, id.hoverboard},
		skip_heli={id.heli_pack, id.hoverboard},
		skip_thruster={id.heli_pack, id.hoverboard},
		decoy={id.decoy_glove, id.hoverboard},
	},
	map_o_matic={
		casual={id.grindboots},
	},

	-- FLEET
	veldin={
		casual={id.magneboots, id.hologuise},
		skip_hololess={id.magneboots}, -- explosives needed
		decoy={id.decoy_glove},
	},
	codebot={
		casual={id.hydro_pack, id.o2_mask},
		skip_clip={},
	},

}

-- bool version of strats
local locations = {}
for location,_ in pairs(strats) do					-- for each location in strats table
	locations[location] = {}						-- add that place to the locations table!
	for strat,_ in pairs(strats[location]) do		-- then, for each strat in the strats table,
		locations[location][strat] = false			-- put it into locations as a deactivated bool.
	end
end



-- toggle an entire category of strats in the location table
function ActivateCategory(category, new_status)
	for location,_ in pairs(locations) do							-- for each key location,
		for strat,_ in pairs(locations[location]) do				-- check its strats.
			if strat:find(category) then							-- if the strat is within the selected category,
				locations[location][strat] = new_status				-- 'toggle' it.
			end
		end
	end
end

-- converts to main.lua's table format
function ApplyReqs(local_table)
	for check in ipairs(local_table) do							
		local_table[check].req_items = {}						-- empty req_items first
		
		local spot = local_table[check].key
		local empty_reqs = false
		for option,status in pairs(locations[spot]) do

			if status then										-- add in strat requirements if activated
				table.insert(local_table[check].req_items, strats[spot][option])
			end

			if status and strats[spot][option][1] == nil then 	-- if we put an empty set in the requirements, prepare to purge
				empty_reqs = true
			end
		end

		if empty_reqs == true then 								-- purge mode
			local_table[check].req_items = {}
		end
	end
	return local_table
end



-- check speedtech toggle, activate appropriate strats
if config.speedtech == true then
	for k,_ in pairs(settings) do
		ActivateCategory(settings.k, config.k)
	end
else
	ActivateCategory('', false)
end
ActivateCategory(settings.standard, true) -- always enable casual strats


-- final build in bordplate table format

local empty_items = {
	{id=2, key='heli_pack', name="Heli-pack", req_items={} },
    {id=3, key='thruster_pack', name="Thruster-pack", req_items={} },
    {id=4, key='hydro_pack', name="Hydro-pack", req_items={} },
    {id=5, key='sonic_summoner', name="Sonic Summoner", req_items={} },
    {id=6, key='o2_mask', name="O2 Mask", req_items={} },
    {id=7, key='pilots_helmet', name="Pilot's Helmet", req_items={} },
	{id=0x9, key='suck_cannon', name="Suck Cannon", req_items={} },
	{id=0xb, key='devastator', name="Devastator", req_items={}, ill_items={0x30, 0x31, 0x32, 0x34, 0x35} },
	{id=0xc, key='swingshot', name="Swingshot", req_items={} },
	{id=0xd, key='visibomb', name="Visibomb", req_items={}, ill_items={0x30, 0x31, 0x32, 0x34, 0x35} },
	{id=0xe, key='taunter', name="Taunter", req_items={}, ill_items={0x30, 0x31, 0x32, 0x34, 0x35} },
	{id=0xf, key='blaster', name="Blaster", req_items={}, ill_items={0x30, 0x31, 0x32, 0x34, 0x35} },
	{id=0x10, key='pyrociter', name="Pyrocitor", req_items={}, ill_items={0x30, 0x31, 0x32, 0x34, 0x35} },
	{id=0x11, key='mine_glove', name="Mine Glove", req_items={}, ill_items={0x30, 0x31, 0x32, 0x34, 0x35} },
	{id=0x12, key='walloper', name="Walloper", req_items={}, ill_items={0x30, 0x31, 0x32, 0x34, 0x35} },
	{id=0x13, key='tesla_claw', name="Tesla Claw", req_items={}, ill_items={0x30, 0x31, 0x32, 0x34, 0x35} },
	{id=0x14, key='glove_of_doom', name="Glove of Doom", req_items={}, ill_items={0x30, 0x31, 0x32, 0x34, 0x35} },
	{id=0x15, key='morph_o_ray', name="Morph-O-Ray", req_items={} },
	{id=0x16, key='hydrodisplacer', name="Hydrodisplacer", req_items={} },
	{id=0x17, key='ryno', name="R.Y.N.O.", req_items={} },
	{id=0x18, key='drone_device', name="Drone Device", req_items={}, ill_items={0x30, 0x31, 0x32, 0x34, 0x35} },
	{id=0x19, key='decoy_glove', name="Decoy Glove", req_items={}, ill_items={0x30, 0x31, 0x32, 0x34, 0x35} },
	{id=0x1a, key='trespasser', name="Trespasser", req_items={} },
    {id=0x1b, key='metal_detector', name="MetalDetector", req_items={} },
    {id=0x1c, key='magneboots', name="Magneboots", req_items={} },
    {id=0x1d, key='grindboots', name="Grindboots", req_items={} },
    {id=0x1e, key='hoverboard', name="Hoverboard", req_items={} },
    {id=0x1f, key='hologuise', name="Hologuise", req_items={} },
    {id=0x20, key='pda', name="PDA", req_items={} },
    {id=0x21, key='map_o_matic', name="Map-O-Matic", req_items={} },
    {id=0x22, key='bolt_grabber', name="Bolt Grabber", req_items={} },
    {id=0x23, key='persuader', name="Persuader", req_items={} },
    {id=0x30, key='zoomerator', name="Zoomerator", req_items={} },
    {id=0x31, key='raritanium', name="Raritanium", req_items={} },
    {id=0x32, key='codebot', name="Codebot", req_items={} },
    {id=0x34, key='premium_nanotech', name="Premium Nanotech", req_items={} },
    {id=0x35, key='ultra_nanotech', name="Ultra Nanotech", req_items={} },
}

local empty_infobots = {
	{id=1, key='novalis', req_items={} },				-- Novalis "infobot" on Veldin1
    {id=2, key='aridia', req_items={} },				-- Aridia infobot on Novalis
    {id=3, key='kerwan', req_items={} },				-- Kerwan infobot on Novalis 
    {id=4, key='eudora', req_items={} },				-- Eudora infobot on Kerwan
    {id=5, key='rilgar', req_items={} },				-- Rilgar infobot on Blarg
    {id=6, key='blarg', req_items={} },					-- Blarg infobot on Eudora
    {id=7, key='umbris', req_items={} },				-- Umbris infobot on Rilgar
    {id=8, key='batalia', req_items={} },				-- Batalia infobot on Umbris
    {id=9, key='gaspar', req_items={} },				-- Gaspar infobot on Batalia
    {id=10, key='orxon', req_items={} },				-- Orxon infobot on Batalia
    {id=0xb, key='pokitaru', req_items={} },			-- Pokitaru infobot on Orxon
    {id=0xc, key='hoven', req_items={} },				-- Hoven infobot on Orxon
    {id=0xd, key='gemlik', req_items={} },				-- Gemlik infobot on Hoven
    {id=0xe, key='oltanis', req_items={} },				-- Oltanis infobot on Gemlik
    {id=0xf, key='quartu', req_items={} }, 				-- Quartu infobot on Oltanis
    {id=0x10, key='kalebo', req_items={} },    			-- KaleboIII infobot on Quartu
    {id=0x11, key='fleet', req_items={} },				-- Fleet infobot on Quartu
    {id=0x12, key='veldin', req_items={} }				-- Veldin2 infobot on Fleet
}

items = ApplyReqs(empty_items)
infobots = ApplyReqs(empty_infobots)