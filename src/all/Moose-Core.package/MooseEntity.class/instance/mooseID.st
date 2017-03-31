accessing
mooseID 
	"Returns an unique identifier of this entity.  This method is mandatory, and must 
	return	an Integer that unqiuely identifies this entity within the entire Moose environ- 
	ment. The return value must not be nil, and must never change." 
	 
	"nil = mooseID ifTrue: [mooseID := MooseModel freshID]." 
	^mooseID