helpers
number: n
	
	| f |
	^ n isNaN 
		ifTrue: ['NaN']
		ifFalse: [ n isInteger 
			ifTrue: [ n asString ]
			ifFalse: [ f := n asFloat.
				f fractionPart isZero 
					ifTrue: [ f rounded asString ]
					ifFalse: [ f asString ] ]  ]
		