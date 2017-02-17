adding
addOn: stream using: aSVGVisitor
	aSVGVisitor names at: self element put: self id.
	self openDef: stream.
	self addPosition: stream.
	self addWidth: (self rx) height: (self ry) into: stream.
	self startStyle: stream.
	self addFillColor: stream.
	self addFillOpacity: stream.
	((self strokeWidth) > 0 and: (self strokeColor) ~= nil)
		ifTrue: [ 
			self addStrokeColor: stream.
			self addStrokeWidth: stream ].	
	self closeTag: stream.
	self startClass: stream.
	self closeTag: stream.
	self addExternalInteractions: aSVGVisitor.
	self closeDef: stream.
