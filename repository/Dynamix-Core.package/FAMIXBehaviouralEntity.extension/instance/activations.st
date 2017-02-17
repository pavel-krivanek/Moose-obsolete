*Dynamix-Core
activations
	<MSEProperty: #activations type: #DynamixActivation opposite: #behaviour> <multivalued> <derived>
	<MSEComment: 'The activations associated with the behavioural entity'>
	<package: #Dynamix>

	^ self privateState 
			attributeAt: #activations
			ifAbsentPut: [FMMultivalueLink 
							on: self
							opposite: #behaviour:.]