accessing attributes
attributeAt: name ifAbsent: aBlock 
	 
	| each | 
	1 
		to: attributes size 
		do: 
			[:n |  
			each := attributes at: n. 
			name == each key ifTrue: [^each value]]. 
	^aBlock value