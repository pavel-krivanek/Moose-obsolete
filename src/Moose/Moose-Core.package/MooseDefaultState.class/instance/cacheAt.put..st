accessing groups
cacheAt: name put: value 
	 
	^ queryCache at: name put: value.
	"| each | 
	1 
		to: queryCache  size 
		do: 
			[:n |  
			each := queryCache at: n. 
			name == each key ifTrue: [^each value: value]]. 
	queryCache := queryCache copyWith: name -> value. 
	^queryCache last value"