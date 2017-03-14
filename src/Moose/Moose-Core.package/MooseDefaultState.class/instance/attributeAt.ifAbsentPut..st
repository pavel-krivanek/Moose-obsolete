accessing attributes
attributeAt: name ifAbsentPut: aBlock 
	 
	| each | 
	1 
		to: attributes size 
		do: 
			[:n |  
			each := attributes at: n. 
			name == each key ifTrue: [
				^each value]]. 
	attributes := attributes copyWith: name -> aBlock value. 
	^attributes last value