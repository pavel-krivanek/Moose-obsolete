accessing - properties
propertyAt: aKey ifAbsent: aBlock
	"Answer the property value associated with aKey or, if aKey isn't found, answer the result of evaluating aBlock."
	
	properties isNil
		ifTrue: [ ^ aBlock value ]
		ifFalse: [ 
			(properties includesKey: aKey) ifTrue: [ 
				^ (properties at: aKey) copy
			].
			^ aBlock value
		]