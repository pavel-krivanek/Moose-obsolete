tests
testComplex
	| model |
	MooseModel resetMeta.
	model := MooseModel new.
	model
		importFromMSEStream:
			'(
(FAMIX.Namespace (id: 1))
(FAMIX.Class (id: 2)
	(parentScope (ref: 1))
)
(FAMIX.Class (id: 3)
	(parentScope (ref: 1))
)
(FAMIX.Class (id: 4)
	(parentScope (ref: 1))
)
(FAMIX.Class (id: 5)
	(parentScope (ref: 1))
)

(FAMIX.AnnotationType (id: 11)
	(container (ref: 1))
)

(FAMIX.AnnotationTypeAttribute (id: 111)
	(parentAnnotationType (ref: 11))
	(declaredType (ref: 2)) )

(FAMIX.AnnotationTypeAttribute (id: 112)
	(parentAnnotationType (ref: 11))
	(declaredType (ref: 4)) )

(FAMIX.AnnotationInstance (id: 12)
	(annotationType (ref: 11))
	(annotatedEntity (ref: 3)))

(FAMIX.AnnotationInstanceAttribute (id: 112)
	(parentAnnotationInstance (ref: 12))
	(annotationTypeAttribute (ref: 111))
	(value ''something''))

(FAMIX.AnnotationInstance (id: 13)
	(annotationType (ref: 11))
	(annotatedEntity (ref: 5)))

)' readStream.
	self assert: model allAnnotationTypes size equals: 1.
	self assert: model allAnnotationTypes first attributes size equals: 2.
	self assert: model allAnnotationTypes first instances size equals: 2.
	self assert: model allAnnotationInstances size equals: 2.
	self assert: (model allAnnotationInstances anySatisfy: [ :each | each attributes size = 1 ]).
	self assert: (model allAnnotationInstances anySatisfy: [ :each | each attributes isEmpty ])