accessing
result
	^ result ifNil: [ self computeAndStoreResult ]