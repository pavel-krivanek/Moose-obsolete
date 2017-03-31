namespacing
undeclarePrefix: aPrefix
	self namespaceScope
		unmapPrefix: aPrefix
		ifAbsent: [nil]