initialization
initialize
	super initialize.
	"Thisi group variable should be removed"
	group := RTGroup new.
	
	offset := self defaultOffset.
	self below.
	self nestDo: [ :n :e :g | n on: e nest: g ].
	self interaction draggable.
	isOnDemand := false.
	textSize := 12.
	gapSize := 10.
	items := OrderedCollection new.
	boxShape := RTShapeBuilder new.
	boxShape box; 
		borderColor: Color lightGray;
		fillColor: Color transparent.
	isFixed := false