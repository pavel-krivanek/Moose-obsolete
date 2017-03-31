initialize-release
propertyMapperDefaultTextFromIndex: aNumber

 	aNumber = 1
		ifTrue: [^ self propertyMapperFirstDefaultText]
		ifFalse: [^ self propertyMapperSecondDefaultText]