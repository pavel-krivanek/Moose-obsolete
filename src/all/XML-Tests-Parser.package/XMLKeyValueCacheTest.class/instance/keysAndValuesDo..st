enumerating
keysAndValuesDo: aBlock
	self associations do: [:each |
		aBlock
			value: each key
			value: each value]