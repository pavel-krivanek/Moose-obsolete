adding
addOn: stream using: aSVGVisitor
	| from to shape el |
	shape := self element.
	el := shape element.
	from := aSVGVisitor names at: el from trachelShape.
	to := aSVGVisitor names at: el to trachelShape.
	self id: from , '_' , to.
	self openDef: stream.
	self addPath: stream with: aSVGVisitor.
	self startStyle: stream.
	self addFillColor: stream.
	self addStrokeColor: stream.
	self addStrokeOpacity: stream.
	self addStrokeWidth: stream.
	self closeTag: stream.
	self decoration ifNotNil: [ self addMarker: stream ].
	self startClass: stream.
	self closeTag: stream.
	self addExternalInteractions: aSVGVisitor.
	self closeDef: stream.