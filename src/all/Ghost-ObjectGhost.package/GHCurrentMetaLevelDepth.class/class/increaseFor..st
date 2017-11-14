evaluating
increaseFor: aBlock

	self increase.
	^aBlock ensure: [ self decrease ]