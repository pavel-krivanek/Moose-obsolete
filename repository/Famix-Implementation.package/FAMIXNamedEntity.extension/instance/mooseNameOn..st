*Famix-Implementation
mooseNameOn: stream 
	self name ifNotNil: 
		[stream nextPutAll: self name]