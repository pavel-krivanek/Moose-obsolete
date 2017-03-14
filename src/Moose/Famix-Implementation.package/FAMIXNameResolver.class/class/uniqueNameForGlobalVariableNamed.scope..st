language independent unique naming
uniqueNameForGlobalVariableNamed: aVarName scope: scopeQualifierOrNil
	"Given ***FAMIX2 compliant**** names for the elements return a FAMIX2 Compliant uniqueName a SYMBOL"

	"Note that the problem in VW is that global variable and namespace can have the same name"

	^scopeQualifierOrNil isNil
		ifTrue: [(self moosifyGlobal: aVarName) asSymbol]
		ifFalse:
			[(scopeQualifierOrNil asString , self famixNamespaceSeparator , self
				moosifyGlobal: aVarName) asSymbol]