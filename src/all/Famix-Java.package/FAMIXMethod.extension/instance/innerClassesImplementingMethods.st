*Famix-Java
innerClassesImplementingMethods
	^ self types select: [ :el | el methods anySatisfy: [ :m | m isStub not ] ]