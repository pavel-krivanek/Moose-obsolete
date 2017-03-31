accessing
extent: newExtent
	| oldExtent min max sx sy |
	oldExtent := self basicEncompassingRectangle extent.
	newExtent = oldExtent
		ifTrue: [ ^ self ].
	min := vertices min.
	max := vertices max.
	sx := newExtent x / (max x - min x).
	sy := newExtent y / (max y - min y).
	vertices := vertices collect: [ :p | (p x * sx) @ (p y * sy) ].
	self resetPath.
	oldExtent = (0@0)
		ifFalse: [ self triggerCallbacksForNewExtent: newExtent oldExtent: oldExtent ]