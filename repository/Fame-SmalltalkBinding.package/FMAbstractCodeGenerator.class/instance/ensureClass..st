compiling
ensureClass: fameClass 
	fameClass isRoot ifTrue: [ ^self defaultSuperclass ].
	^self 
		ensureClass: fameClass
		superclass: (self ensureClass: fameClass superclass)