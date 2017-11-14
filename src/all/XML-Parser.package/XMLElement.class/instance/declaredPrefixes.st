namespacing
declaredPrefixes
	^ self usesNamespaces "avoid lazy initializing the scope"
		ifTrue: [self namespaceScope mappedPrefixes]
		ifFalse: [#()]