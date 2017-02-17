*Famix-Java
isAnnotatedWith: anAnnotationName
	^ self annotationInstances contains: [ :each | each annotationType name asSymbol = anAnnotationName asSymbol ]