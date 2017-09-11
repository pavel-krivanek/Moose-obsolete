accessing
sourceText
	| start |
	self sourcesAreReadable ifFalse: [ ^ '' ].
	
	start := startPos ifNil: [ 1 ].
	
	^ self fileReference
		binaryReadStreamDo: [ :in | 
			| stream |
			stream := ZnCharacterReadStream on: in encoding: self encoding.
			1 to: start - 1 do: [ :i | stream next ].
			stream next: (endPos ifNil: [ in size + 1 ]) - start + 1 ]