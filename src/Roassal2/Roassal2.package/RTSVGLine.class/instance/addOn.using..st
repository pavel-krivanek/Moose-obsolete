adding
addOn: stream using: aSVGVisitor
	
	self id: (aSVGVisitor nameFor: self element).
	self openDef: stream.
	self addPosition: stream.
	self startStyle: stream.
	self addStrokeColor: stream.
	self addStrokeOpacity: stream.
	self addStrokeWidth: stream.
	self closeTag: stream.
	self decoration ifNotNil: [ self addMarker: stream ].
	self startClass: stream.
	self closeTag: stream.
	self addExternalInteractions: aSVGVisitor.
	self closeDef: stream.
	