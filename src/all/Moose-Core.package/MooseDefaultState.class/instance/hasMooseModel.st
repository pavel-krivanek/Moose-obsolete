testing
hasMooseModel
	| each | 
	1 to: attributes size 
		do: [ :n |
			each := attributes at: n.
			each key = #privateModel ifTrue: [ ^true ] ].
	^false
