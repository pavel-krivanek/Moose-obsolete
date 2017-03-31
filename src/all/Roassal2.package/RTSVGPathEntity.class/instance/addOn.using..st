adding
addOn: stream using: aSVGVisitor
	aSVGVisitor names at: self element put: self id.
	self openDef: stream.
	self addPath: stream.
	self startStyle: stream.
	self addFillColor: stream.
	self addFillOpacity: stream.
	self addStrokeColor: stream.
	self addStrokeWidth: stream.	
	self closeTag: stream.
	self startTransform: stream.
	self addTranslation: self center into: stream.
	self  addScale: self scale into: stream. 
	self closeTag: stream.
	self startClass: stream.
	self addContainedInteractions: aSVGVisitor.
	self closeTag: stream.
	self addExternalInteractions: aSVGVisitor.
	self closeDef: stream.
