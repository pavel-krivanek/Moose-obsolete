public-background
removeAllBackgrounds
	"removes all the backgrounds currently drawn for all the existing groups
	ex:
		composer removeAllBackgrounds
	"
	view canvas removeShapes: backgrounds.
	backgrounds removeAll.