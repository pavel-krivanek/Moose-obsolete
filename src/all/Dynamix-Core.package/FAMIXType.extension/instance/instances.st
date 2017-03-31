*Dynamix-Core
instances
	<MSEProperty: #instances type: #DynamixInstance opposite: #type>
	<multivalued> <derived>
	<MSEComment: 'Dynamic instances of this type'>
	<package: #Dynamix>
	
	^ self privateState
		attributeAt: #instances 
		ifAbsentPut: [
			FMMultivalueLink 
				on: self
				opposite: #type: ]
	 