initialization
initialize
	super initialize.
	self shape rectangle 
		fillColor: Color white;
		borderColor: Color gray.
	self interaction popup; draggable.
	inset := self defaultInset.
	extent := self defaultExtent.