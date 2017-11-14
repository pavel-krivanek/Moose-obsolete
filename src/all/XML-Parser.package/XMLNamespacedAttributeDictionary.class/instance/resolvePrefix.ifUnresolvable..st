private
resolvePrefix: aPrefix ifUnresolvable: aBlock
	^ self namespaceScope
		resolvePrefix: aPrefix
		ifUnresolvable: aBlock