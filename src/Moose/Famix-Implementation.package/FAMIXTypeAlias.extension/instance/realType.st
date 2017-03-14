*Famix-Implementation
realType
	"The alias type is just an alias.
	The real type is the one provided by the aliasedType "
	^ self aliasedType isNil 
		ifTrue: [nil]
		ifFalse: [self aliasedType realType]