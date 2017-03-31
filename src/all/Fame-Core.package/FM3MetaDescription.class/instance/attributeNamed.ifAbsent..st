accessing-query
attributeNamed: aString ifAbsent: aBlock
	FM3 note: 'TODO'.
	FM3 note: 'think about strings vs symbols'.
	^self attributes 
		detect: [ :each | each name asString = aString asString ]
		ifNone: [ 
			self superclass isNil
				ifTrue: [ aBlock value ]
				ifFalse: [ self superclass attributeNamed: aString ifAbsent: aBlock]]
