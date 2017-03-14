accessing - computed
elementsWithinTheSelection
	^ self elementsWithModel
		select: [ :e | rectangle containsPoint: e position ]