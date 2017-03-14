initialization
initializeForMethod: aMethod inClass: aClass
	theClass := aClass.
	famixMethod := aMethod.
	methodScope := SmalltalkScope extend: (importer scopeOfClass: aClass).
