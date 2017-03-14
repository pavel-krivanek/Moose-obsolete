accessing-derived
stopTimestamp
	^ self successor
		ifNotNil: [ :alias | alias timestamp - 1 ]
		ifNil: [ MalUnlimited positive ]