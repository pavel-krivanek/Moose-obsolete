instance creation
returnType: aReturnType name: aName minArguments: aMinimum maxArguments: aMaximum argumentTypes: anArgumentTypeCollection
	^ self new
		setReturnType: aReturnType
		name: aName
		minArguments: aMinimum
		maxArguments: aMaximum
		argumentTypes: anArgumentTypeCollection