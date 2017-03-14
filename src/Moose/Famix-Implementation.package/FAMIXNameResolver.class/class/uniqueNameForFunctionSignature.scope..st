language independent unique naming
uniqueNameForFunctionSignature: aFuncSignature scope: scopeQualifierOrNil
	"Given ***FAMIX2 compliant**** names for the elements return a FAMIX2 Compliant uniqueName a SYMBOL"

	^(scopeQualifierOrNil isNil or: [scopeQualifierOrNil isEmpty])
		ifTrue: [aFuncSignature asSymbol]
		ifFalse:
			[(scopeQualifierOrNil name asString , self famixNamespaceSeparator
				, aFuncSignature) asSymbol]