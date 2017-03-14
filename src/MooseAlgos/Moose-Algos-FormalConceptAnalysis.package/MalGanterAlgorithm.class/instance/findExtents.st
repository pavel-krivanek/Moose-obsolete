algorithm
findExtents
	
	| extents |
	self setUp.
	extents := "ArrayList" OrderedCollection  with: 0.
	[extents last = objectsMask]
		whileFalse: [extents add: (self findNextExtent: extents last)].
	^extents