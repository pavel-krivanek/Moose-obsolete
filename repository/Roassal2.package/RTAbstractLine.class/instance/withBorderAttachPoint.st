attach point
withBorderAttachPoint
	| ap |
	ap := RTBorderAttachPoint new.
	self attachPoint: ap.
	^ ap