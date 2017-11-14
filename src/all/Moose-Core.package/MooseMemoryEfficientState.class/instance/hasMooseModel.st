testing
hasMooseModel
	1 to: attributes size do: [ :n | 
		(attributes at: n) key = #privateModel
			ifTrue: [ ^ true ] ].
	^ false