comparing
= anObject
	
	(self == anObject) ifTrue: [ ^ true ].
	(anObject class = PPContextMemento) ifFalse: [ ^ false ].
	
	(anObject stream == stream) ifFalse: [ ^ false ].
	(anObject position == position) ifFalse: [ ^ false ].
	
	(self propertiesSize == anObject propertiesSize) ifFalse: [ ^ false ].

	self keysAndValuesDo: [ :key :value |
		(anObject hasProperty: key) ifFalse: [ ^ false ].
		((anObject propertyAt: key) = value) ifFalse: [ ^ false ]. 
 	].
	
	^ true.
