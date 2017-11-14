instance creation
newEmptyAttributeDictionary
	^ (self usesNamespaces
		ifTrue: [XMLLazyNamespacedAttributeDictionary]
		ifFalse: [XMLLazyAttributeDictionary]) new