accessing attributes
attributeAt: name ifAbsent: aBlock
	1 to: attributes size do: [ :n | 
		name == (attributes at: n) key
			ifTrue: [ ^ (attributes at: n) value ] ].
	^ aBlock value