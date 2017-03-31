compiling-names
categoryNameFor: fameClass 
	^self defaultCategory isNil
			ifTrue: [ fameClass package name asString ]
			ifFalse: [ self defaultCategory ]