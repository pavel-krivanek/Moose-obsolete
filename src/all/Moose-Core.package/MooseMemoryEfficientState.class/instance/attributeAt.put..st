accessing
attributeAt: name put: value
	1 to: attributes size do: [ :n | 
		name == (attributes at: n) key
			ifTrue: [ ^ (attributes at: n) value: value ] ].
	attributes := attributes copyWith: name -> value.
	^ attributes last value