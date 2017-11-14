private
resolvePrefix: aPrefix ifUnresolvable: aBlock
	^ attributeDictionary
		resolvePrefix: aPrefix
		ifUnresolvable: aBlock