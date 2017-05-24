accessing
sourceText
	(self startLine isNil or: [ self endLine isNil ]) ifTrue: [ ^ '' ].
	
	^ String
		streamContents: [ :stream | 
			| index |
			index := 1.
			self completeText
				linesDo: [ :each | 
					(index between: self startLine and: self endLine - 1) ifTrue: [ stream nextPutAll: each; cr ].
					index = self endLine ifTrue: [ stream nextPutAll: each ].
					index := index + 1 ] ]