accessing groups
cacheAt: name ifAbsentPut: aBlock 

	^ queryCache at: name ifAbsentPut: aBlock.
	"| each | 
	1 
		to: queryCache size 
		do: 
			[:n |  
			each := queryCache at: n. 
			name == each key ifTrue: [
				^each value]]. 
	queryCache := queryCache copyWith: name -> aBlock value. 
	^queryCache last value"