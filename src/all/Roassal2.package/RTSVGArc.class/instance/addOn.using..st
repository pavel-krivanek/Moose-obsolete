adding
addOn: stream using: aSVGVisitor
	aSVGVisitor names at: self element put: self id.
	self openDef: stream.
	self addPath: stream.
	self startStyle: stream.
	self addFillColor: stream.
	self closeTag: stream.
	self startClass: stream.
	self closeTag: stream.
	self addExternalInteractions: aSVGVisitor.
	self closeDef: stream.
	
	