evaluating
decreaseFor: aBlock

	self decrease.
	^aBlock ensure: [ self increase ]