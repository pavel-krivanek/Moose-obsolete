Extension { #name : #FAMIXNamedEntity }

{ #category : #'*Famix-Java' }
FAMIXNamedEntity >> isAnnotated [
	^ self annotationInstances notEmpty
]

{ #category : #'*Famix-Java' }
FAMIXNamedEntity >> isAnnotatedWith: anAnnotationName [
	^ self annotationInstances contains: [ :each | each annotationType name asSymbol = anAnnotationName asSymbol ]
]
