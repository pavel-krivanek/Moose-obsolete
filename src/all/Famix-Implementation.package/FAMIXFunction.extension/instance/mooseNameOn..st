*Famix-Implementation
mooseNameOn: stream 
	| parent |
	parent := self container.
	parent ifNotNil: 
		[ parent mooseNameOn: stream.
		stream nextPut: $. ].
	self signature
		ifNotNil: [ stream nextPutAll: self signature ]
		ifNil: [ self name ifNotNil: [ stream nextPutAll: self name] ]