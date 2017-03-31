*Famix-Java
declaredExceptions
	<MSEProperty: #declaredExceptions type: #FAMIXDeclaredException opposite: #definingMethod> <multivalued> <derived>
	<MSEComment: 'The exceptions declared by the method'>
	<package: #Java>
	^ self privateState attributeAt: #declaredExceptions
							ifAbsentPut: [FMMultivalueLink on: self opposite: #definingMethod:]