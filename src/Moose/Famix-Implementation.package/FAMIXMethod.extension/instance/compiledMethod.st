*Famix-Implementation
compiledMethod
	"Return the compiled method associated to the receiver or nil"
	
	^ self smalltalkClass  compiledMethodAt: self name asSymbol
	
	