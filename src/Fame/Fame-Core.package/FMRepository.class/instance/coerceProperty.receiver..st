private
coerceProperty: propertyOrName receiver: receiver

	propertyOrName isFM3Property ifTrue: [ ^propertyOrName ].
	propertyOrName isString ifTrue: [
		^(self metaDescriptionOf: receiver) at: propertyOrName ].
	self error.
	
