private
writeContentModelName: aName isNonElementName: aBoolean
	aBoolean
		ifTrue: [self writer nextPutAll: aName]
		ifFalse: [self writer writeName: aName]