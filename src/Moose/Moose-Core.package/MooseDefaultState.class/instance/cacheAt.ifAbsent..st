accessing groups
cacheAt: name ifAbsent: aBlock 
	 
	^ queryCache at: name ifAbsent: [aBlock value].
	"| each | 
	1 
		to: queryCache size 
		do: 
			[:n |  
			each := queryCache at: n. 
			name == each key ifTrue: [^each value]]. 
	^aBlock value"