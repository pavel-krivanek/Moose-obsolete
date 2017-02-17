initialization
initialize
	super initialize.
	attachPoint := RTCenteredAttachPoint new.
	baseSize := self defaultBaseSize.
	self percentage: 1.