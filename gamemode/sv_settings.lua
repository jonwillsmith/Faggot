--[[ to add:
          sv_airaccellerate 100
          sv_MaxVelocity = 2000
          sv_MaxAngularVelocity	= 3636

Anthr4x's settings

local physData = physenv.GetPerformanceSettings()
physData.MaxVelocity = 2000
physData.MaxAngularVelocity	= 3636

physenv.SetPerformanceSettings(physData)

To be integrated into files in the data folder.
]]


function GM:OnGamemodeLoaded()
	RunConsoleCommand("sv_allowcslua", "1")
	RunConsoleCommand("sv_sticktoground", "0")
	RunConsoleCommand("sv_airaccelerate", "120")
	RunConsoleCommand("sv_maxvelocity", "2000")
	
	RunConsoleCommand("sbox_maxprops", "3")
end

--[[----------------------------------
Settings and Stuff 
------------------------------------]]

local folders = {
PropKillRevivified = {
			"Settings",
			"Stats",
			"Logs"
			}
}

for i=1,#folders.PropKillRevivified do
	local a = "PropKillRevivified/" .. folders.PropKillRevivified[i]
	if !file.IsDir(a,"DATA") then
		file.CreateDir(a)
	end
end
