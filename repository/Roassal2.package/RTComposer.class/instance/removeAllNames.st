public-naming
removeAllNames
	"removes all the names present in the current view
	ex:
	
		composer removeAllNames
	"
	view removeElements: names.
	names removeAll.