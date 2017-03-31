accessing-derived
level

	self parent ifNil: [^0].
	^self parent level + 1.

	"self parent ifNil: [^0].
	^self parent isSelfMessage
		ifFalse: [ 1 ]
		ifTrue: [ self parent level + 1 ]"