*Famix-Java
caughtExceptions
	<MSEProperty: #caughtExceptions type: #FAMIXCaughtException opposite: #definingMethod> <multivalued> <derived>
	<MSEComment: 'The exceptions caught by the method'>
	<package: #Java>
	^ self privateState attributeAt: #caughtExceptions
							ifAbsentPut: [FMMultivalueLink on: self opposite: #definingMethod:]