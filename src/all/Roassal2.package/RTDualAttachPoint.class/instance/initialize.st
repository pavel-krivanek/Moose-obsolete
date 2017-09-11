initialization
initialize
	| default |
	super initialize.
	default := RTCenteredAttachPoint instance.
	self attachFrom: default;
		attachTo: default. 