adding/removing
collect: aBlock 

	| resultCollection result | 
	resultCollection := self entities collect: aBlock. 
	result := MooseGroup withAll: resultCollection. 
	^ result