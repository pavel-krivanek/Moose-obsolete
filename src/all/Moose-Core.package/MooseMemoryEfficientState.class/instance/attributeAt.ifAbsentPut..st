accessing attributes
attributeAt: name ifAbsentPut: aBlock
	1 to: attributes size do: [ :n | 
		name == (attributes at: n) key
			ifTrue: [ ^ (attributes at: n) value ] ].
	attributes := attributes copyWith: name -> aBlock value.
	^ attributes last value