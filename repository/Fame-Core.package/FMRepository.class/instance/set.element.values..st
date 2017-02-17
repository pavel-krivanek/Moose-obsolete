accessing-meta
set: propertyOrName element: element values: values 
	
	^(self coerceProperty: propertyOrName receiver: element) setOn: element values: values 