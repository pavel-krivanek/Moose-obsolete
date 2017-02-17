attach point
withShorterDistanceAttachPointWithJump
	| ap |
	ap := RTShorterDistanceAttachPoint new.
	self attachPoint: ap.
	^ ap.