weight
leafWeight: block
	self weightElement: [ :e | 
		(e attributes includesKey: #weight) 
			ifTrue: [ e attributes at: #weight ]
			ifFalse: [ | w children |
				children := e attributes at: self childrenKey.
				children 
					ifEmpty: [ w := block rtValue: e model ]
					ifNotEmpty: [ 
						w := children
							inject: 0 
							into: [ :s :el | s + (weight rtValue: el) ] ].
				w := w max: self minWeightValue.
				e attributes at: #weight put: w.
				w ] ].