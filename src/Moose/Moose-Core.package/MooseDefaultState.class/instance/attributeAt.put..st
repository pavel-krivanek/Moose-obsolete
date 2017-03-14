accessing attributes
attributeAt: name put: value 
	 
	| each | 
	1 
		to: attributes size 
		do: 
			[:n |  
			each := attributes at: n. 
			name == each key ifTrue: [^each value: value]]. 
	attributes := attributes copyWith: name -> value. 
	^attributes last value