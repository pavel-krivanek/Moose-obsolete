properties
numberOfBytes
	<MSEProperty: #numberOfBytes type: #Number>
	<MSEComment: 'Number of bytes in a file.'>
	<derived>
	^ self
		lookUpPropertyNamed: #numberOfBytes
		computedAs: [ 
			self fileExists
				ifTrue: [ 
					| stream v |
					stream := self readStream.
					v := stream contents size.
					stream close.
					v ]
				ifFalse: [ 0 ] ]