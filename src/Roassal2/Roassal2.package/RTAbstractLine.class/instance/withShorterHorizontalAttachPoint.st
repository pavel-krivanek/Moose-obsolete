attach point
withShorterHorizontalAttachPoint
	| ap |
	ap := RTShorterHorizontalDistanceAttachPoint new.
	self attachPoint: ap.
	^ ap