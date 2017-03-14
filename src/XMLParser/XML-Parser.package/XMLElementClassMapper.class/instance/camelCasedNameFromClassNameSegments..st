private
camelCasedNameFromClassNameSegments: aNameSegmentCollection
	^ String streamContents: [:stream |
		aNameSegmentCollection withIndexDo: [:each :i |
			stream nextPutAll:
				(i > 1
					ifTrue: [each]
					ifFalse: [each asLowercase])]]