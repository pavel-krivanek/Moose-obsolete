accessing
reset
	uniqueInstance ifNotNil:#unsubscribe.
	uniqueInstance := nil.