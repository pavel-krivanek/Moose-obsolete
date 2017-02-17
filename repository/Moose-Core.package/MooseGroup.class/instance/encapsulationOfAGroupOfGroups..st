public interface
encapsulationOfAGroupOfGroups: aGroupOfGroups 
	 
	| encapsulation | 
	self isEmpty ifTrue: [^0]. 
	encapsulation := 0. 
	aGroupOfGroups 
		do: 
			[:eachReferenceGroup |  
			| intersection | 
			intersection := self intersection: eachReferenceGroup. 
			encapsulation := intersection size / eachReferenceGroup size 
				* (intersection size / self size) + encapsulation]. 
	^encapsulation