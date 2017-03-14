adding
addPath: stream with: visitor
	stream nextPutAll: 'name="bezier[]" '.
	self addCurves: stream with: visitor