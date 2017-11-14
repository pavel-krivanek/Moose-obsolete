instance creation
newAttributeDictionary
	^ (self usesNamespaces
		ifTrue: [XMLNamespacedAttributeDictionary]
		ifFalse: [XMLAttributeDictionary]) new