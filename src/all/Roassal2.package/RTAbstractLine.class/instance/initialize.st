initialization
initialize
	super initialize.
	attachPoint := RTCenteredAttachPoint new.
	self withSelfLoop.
	width := 1.