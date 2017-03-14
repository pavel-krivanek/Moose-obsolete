accessing-meta
get: propertyOrName element: element 

	^(self coerceProperty: propertyOrName receiver: element) getFrom: element