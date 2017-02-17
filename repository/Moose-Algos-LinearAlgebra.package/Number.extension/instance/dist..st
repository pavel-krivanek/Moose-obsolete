*moose-algos-linearAlgebra
dist: aNumber

	^self < aNumber
		ifTrue: [ aNumber - self ]
		ifFalse: [ self - aNumber ]