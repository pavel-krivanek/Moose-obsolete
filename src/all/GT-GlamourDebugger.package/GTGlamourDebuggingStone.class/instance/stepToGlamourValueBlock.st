actions
stepToGlamourValueBlock

	self session stepUntil: self glamourValueDeliveryPredicate from: self session context.
	self session isActive ifTrue: [ 
		self session stepInto ].
	^ true