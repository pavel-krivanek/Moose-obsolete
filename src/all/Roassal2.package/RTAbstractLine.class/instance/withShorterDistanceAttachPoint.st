attach point
withShorterDistanceAttachPoint
	| ap |
	ap := RTBorderAttachPoint new.
	self attachPoint: ap.
	^ ap.