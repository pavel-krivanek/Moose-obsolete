*Famix-Java
exceptions
	<MSEProperty: #exceptions type: #FAMIXException opposite: #exceptionClass>
	<multivalued>
	<derived>
	<MSEComment: 'Exceptions which class is myself.'>
	^ self privateState
		attributeAt: #exceptions
		ifAbsentPut: [ FMMultivalueLink on: self opposite: #exceptionClass: ]