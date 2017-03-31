adding
addOn: stream using: aSVGVisitor
	aSVGVisitor names at: self element put: self id.
	self openDef: stream.
	self addPosition: stream.
	self addWidth: (self box width rounded) height: (self box height rounded) into: stream.
	self addForm: stream.
	self startClass: stream.
	self closeTag: stream.
	self addExternalInteractions: aSVGVisitor.
	self closeDef: stream.
