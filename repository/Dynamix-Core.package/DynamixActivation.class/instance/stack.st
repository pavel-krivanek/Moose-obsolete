accessing-derived
stack
	^self  parent isNil
		ifFalse: [ self parent stack copyWith: self ]
		ifTrue: [ Array with: self ]