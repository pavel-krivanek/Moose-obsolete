tests
testImportAnnotations
	| model |
	MooseModel resetMeta.
	model := MooseModel new.
	model
		importFromMSEStream:
			'(
		(FAMIX.Namespace (id: 100) (name ''aNamespace''))				
		(FAMIX.Class (id: 1) (name ''AClass''))
		(FAMIX.Class (id: 10) (name ''AnotherClass''))
		(FAMIX.Method (id: 2) (name ''aMethod'') (parentType (ref: 1)))
		(FAMIX.Class (id: 3) (name ''AnAnnotationDefinitionClass''))
		(FAMIX.AnnotationType (id: 4) (name ''AnAnnotation'') (container (ref: 100)))
		(FAMIX.Class (id: 5) (name ''AnotherAnnotationDefinitionClass''))
		(FAMIX.AnnotationType (id: 6) (name ''AnotherAnnotation'') (container (ref: 100)))
		(FAMIX.AnnotationInstance (id: 7) (annotatedEntity (ref: 1)) (annotationType (ref: 4)))
		(FAMIX.AnnotationInstance (id: 8) (annotatedEntity (ref: 10)) (annotationType (ref: 4)))
		(FAMIX.AnnotationInstance (id: 9) (annotatedEntity (ref: 2)) (annotationType (ref: 6)))
	)' readStream.
	self assert: model entities size equals: 11.
	self assert: model allAnnotationTypes size equals: 2.
	self assert: model allAnnotationInstances size equals: 3.
	model allAnnotationInstances
		do: [ :i | 
			self assert: (i annotationType instances includes: i).
			self assert: (i annotatedEntity annotationInstances includes: i) ].
	self assert: (model allAnnotationTypes entityNamed: #aNamespace::AnAnnotation) instances size equals: 2.
	self assert: (model allAnnotationTypes entityNamed: #aNamespace::AnotherAnnotation) instances size equals: 1.
	model allAnnotationTypes
		do: [ :each | 
			self assert: (each container definedAnnotationTypes includes: each).
			self assert: each container == each belongsTo ]