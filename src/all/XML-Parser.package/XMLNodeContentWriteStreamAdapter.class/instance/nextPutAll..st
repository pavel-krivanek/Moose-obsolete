accessing
nextPutAll: aString
	aString size > 0 "optimization"
		ifTrue: [
			self insertSpaceBefore: aString first.
			stream nextPutAll: aString.
			lastChar := aString last].
	^ aString.