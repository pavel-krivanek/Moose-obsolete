accessing-query
attributeNamed: aString ifAbsent: aBlock
	"Cyril: I remove the #asString because it is longer to convert it ourself than to let the = manage it."

	self attributes do: [ :each | each name = aString ifTrue: [ ^ each ] ].
	
	^ self superclass ifNil: [ aBlock value ]
		ifNotNil: [ :sc | sc attributeNamed: aString ifAbsent: aBlock ]