private
namespaceScope
	^ namespaceScope
		ifNil: [
			namespaceScope :=
				attributeDictionary == self emptyAttributeDictionary
					ifTrue: [XMLNamespaceScope new]
					ifFalse: [attributeDictionary namespaceScope]]