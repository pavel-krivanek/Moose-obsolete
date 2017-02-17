public interface
distributionOverAGroupOfGroups: aGroupOfGroups 
	 
	| distribution | 
	distribution := 0. 
	aGroupOfGroups 
		do: 
			[:eachReferenceGroup |  
			| intersection | 
			intersection := self intersection: eachReferenceGroup. 
			distribution := distribution 
				+ (intersection size / eachReferenceGroup size)]. 
	^distribution