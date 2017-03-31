adding
addAssignment: val toReturnOf: aSelector  
	| eT |
	eT := self extractedTypeForReturnInMethod: (theClass >> aSelector).
	eT addAssignment: val.