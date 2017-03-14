removing
removeAttribute: aName
	^ (self removeAt: (self indexOfAttribute: aName)) value