enumerating
allAttributesDo: block
	
	attributes do: block.
	self superclass notNil ifTrue: [
		self superclass allAttributesDo: block ]