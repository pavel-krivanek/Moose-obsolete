*Famix-Implementation
isClassInitializer
	<MSEProperty: #isClassInitializer type: #Boolean>
	<derived>
	<MSEComment: 'True if the method is an initializer of the class (i.e. contains the attribute init env)'>
	^ #initializer = self kind
		or: [ self privateState propertyAt: #isClassInitializer ifAbsent: [ false ] ]