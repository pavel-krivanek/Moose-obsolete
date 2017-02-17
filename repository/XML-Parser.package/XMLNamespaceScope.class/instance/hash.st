comparing
hash
	self hasNamespaces
		ifTrue: [^ self species hash bitXor: self prefixMappings hash]
		ifFalse: [^ self species hash]