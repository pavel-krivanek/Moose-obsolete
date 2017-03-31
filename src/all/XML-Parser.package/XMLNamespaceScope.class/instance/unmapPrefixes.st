unmapping
unmapPrefixes
	self hasNamespaces
		ifTrue: [
			"copy-on-write"
			self copiedPrefixMappings removeAll]