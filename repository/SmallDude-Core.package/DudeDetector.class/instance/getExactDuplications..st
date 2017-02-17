deprecation
getExactDuplications: minDupLen 
	 
	| duplications | 
	duplications := OrderedCollection new.	"self halt." 
	self 
		forEntityPairsDo: 
			[:rowEntity :colEntity |  
			duplications 
				addAll: 
					(self exactDupFor: rowEntity and: colEntity withLength: minDupLen)]. 
	^duplications