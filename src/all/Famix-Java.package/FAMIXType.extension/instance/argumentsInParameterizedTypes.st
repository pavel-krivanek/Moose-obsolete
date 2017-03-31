*Famix-Java
argumentsInParameterizedTypes
	<MSEProperty: #argumentsInParameterizedTypes type: #FAMIXParameterizedType opposite: #arguments>
	<multivalued> <derived>
	<MSEComment: 'Arguments of parameterized types that point to this type.'>
	
	^ self privateState 
		attributeAt: #argumentsInParameterizedTypes 
		ifAbsentPut: [
			FMMultiMultivalueLink on: self opposite: #arguments ]