*Famix-Java
thrownExceptions
	<MSEProperty: #thrownExceptions type: #FAMIXThrownException opposite: #definingMethod> <multivalued> <derived>
	<MSEComment: 'The exceptions thrown by the method'>
	<package: #Java>
	^ self privateState attributeAt: #thrownExceptions
							ifAbsentPut: [FMMultivalueLink on: self opposite: #definingMethod:]