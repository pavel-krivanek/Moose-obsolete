language independent unique naming
uniqueNameForClassNamed: aClassName scope: uniqueParentNamespaceOrNil
	"Given ***FAMIX2 compliant**** names for the elements return a FAMIX2 Compliant uniqueName a SYMBOL"

	^uniqueParentNamespaceOrNil isNil
		ifTrue: [aClassName asSymbol]
		ifFalse:
			[(uniqueParentNamespaceOrNil asString , self famixNamespaceSeparator
				, aClassName) asSymbol]