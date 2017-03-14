adding
addOn: stream using: aSVGVisitor
	| box |
	aSVGVisitor names at: self element put: self id.
	self openDef: stream.
	self addPosition: stream.
	self startStyle: stream.
	self addFillColor: stream.
	self closeTag: stream.
	self startTransform: stream.
	box := element encompassingRectangle.
	self addRotation: self angle point: (self x)@(self y) into: stream.
	
	self closeTag: stream.
	self startClass: stream.
	self closeTag: stream.
	self closeDefWithContent: stream.
	self addStringWithFont: self content fontSize: self fontSize into: stream.
	self addExternalInteractions: aSVGVisitor.
	self closeFullDef: stream.
