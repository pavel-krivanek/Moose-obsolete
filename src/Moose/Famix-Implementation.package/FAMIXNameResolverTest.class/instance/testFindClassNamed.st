tests
testFindClassNamed

	self assert: (FAMIXNameResolver findClassNamedOrNilFromFullName: #Object) == Object.
	self assert: (FAMIXNameResolver findClassNamedOrNilFromFullName: #ObjectAbsent) isNil.