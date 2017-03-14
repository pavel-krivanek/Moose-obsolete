language independent unique naming
uniqueNameForNamespaceNamed: aNamespaceName scope: uniqueParentNamespaceName
	"Given ***FAMIX2 compliant**** names for the elements return a FAMIX2 Compliant uniqueName a SYMBOL"

	^(uniqueParentNamespaceName isNil or: [uniqueParentNamespaceName isEmpty])
		ifTrue: [aNamespaceName asSymbol]
		ifFalse:
			[(uniqueParentNamespaceName asString , self famixNamespaceSeparator
				, aNamespaceName) asSymbol]