attach point
withShorterVerticalAttachPoint
	| ap |
	ap := RTShorterVerticalDistanceAttachPoint new.
	self attachPoint: ap.
	^ ap