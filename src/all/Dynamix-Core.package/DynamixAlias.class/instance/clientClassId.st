accessing-derived
clientClassId
	^ self clientClass isNil
		ifTrue: [ 'unknown' ]
		ifFalse: [ self clientClass name ]