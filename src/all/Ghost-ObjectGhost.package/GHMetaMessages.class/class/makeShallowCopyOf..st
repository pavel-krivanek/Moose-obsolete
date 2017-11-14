helpers-primitives
makeShallowCopyOf: anObject
	"Answer a copy of the receiver which shares the receiver's instance variables. It should never be overridden. I'm invoked from the copy template method. Subclasses that need to specialize the copy should specialize the postCopy hook method."
	
	<primitive: 148>
	self primitiveFailed