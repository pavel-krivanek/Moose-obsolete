private
typesForLiteral: aRBProgramNode
	| value |
	value := aRBProgramNode value.
	value isString
		ifTrue: [ 1 to: rhs size do: [ :i | 
				i printString = value
					ifTrue: [ ^ self basicModelTypes: IdentitySet new forIndex: i ] ] ].
	^ Array with: (self model classFor: value class)