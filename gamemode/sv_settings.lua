
function GM:OnGamemodeLoaded()
	RunConsoleCommand("sv_allowcslua", "1")
	RunConsoleCommand("sv_sticktoground", "0")
	RunConsoleCommand("sv_airaccelerate", "120")
	RunConsoleCommand("sv_maxvelocity", "2000")
	
	RunConsoleCommand("sbox_maxprops", "3")
end
