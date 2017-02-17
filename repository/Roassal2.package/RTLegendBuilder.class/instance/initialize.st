initialization
initialize
	super initialize.
	"Thisi group variable should be removed"
	group := RTGroup new.
	
	offset := self defaultOffset.
	position := #below.
	isOnDemand := false.
	textSize := 12.
	gapSize := 10.
	items := OrderedCollection new.
	isFixed := false