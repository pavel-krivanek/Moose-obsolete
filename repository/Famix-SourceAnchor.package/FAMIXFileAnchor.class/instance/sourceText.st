accessing
sourceText
	| contents stream index |
	(self startLine isNil or: [self endLine isNil]) ifTrue: [^ ''].

	contents := self completeText.
	stream := String new writeStream.
	index := 1.
	contents linesDo: [:each | 
		(index >= self startLine and: [index < self endLine]) ifTrue: [stream nextPutAll: each; cr.].
		index = self endLine ifTrue: [stream nextPutAll: each].
		index := index + 1.
	].
	^ stream contents