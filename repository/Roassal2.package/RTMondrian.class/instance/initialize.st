initialization
initialize
	rootFrame := self createNewFrame.
	currentFrame := rootFrame.
	super initialize.
	self resetLayoutBuilder.
	self resetEdgeBuilder