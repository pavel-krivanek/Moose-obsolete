language independent unique naming
uniqueNameForImplicitVariableNamed: aVarName scope: scopeQualifierOrNil
	"Given ***FAMIX2 compliant**** names for the elements return a FAMIX2 Compliant uniqueName a SYMBOL"

	^(scopeQualifierOrNil isNil or: [scopeQualifierOrNil isEmpty])
		ifTrue: [aVarName asSymbol]
		ifFalse:
			[(scopeQualifierOrNil , self methodAndVariableSeparator , aVarName)
				asSymbol]