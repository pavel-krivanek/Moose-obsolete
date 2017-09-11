accessing
sourceText
	(self startLine isNil and: [ self endLine isNil ]) ifTrue: [ ^ self completeText ].
	
	self sourcesAreReadable ifFalse: [ ^ '' ].
	
	^ self fileReference
		binaryReadStreamDo: [ :in | String streamContents: [ :s | FAMIXFileAnchorReader readStream: (ZnCharacterReadStream on: in encoding: self encoding) for: self into: s ] ]