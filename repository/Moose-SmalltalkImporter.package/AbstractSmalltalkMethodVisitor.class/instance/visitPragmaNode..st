visitor-double dispatching
visitPragmaNode: aPragmaNode
	| annotationInstance annotationType |
	annotationType := self importer ensureAnnotationType: aPragmaNode.
	annotationInstance := FAMIXAnnotationInstance new.
	annotationInstance annotationType: annotationType.
	self importer addEntity: annotationInstance.
	annotationInstance annotatedEntity: self methodEntity.
	aPragmaNode arguments doWithIndex: [:each :i |
		| attribute |
		attribute := FAMIXAnnotationInstanceAttribute new.
		attribute value: each value.
		attribute parentAnnotationInstance: annotationInstance.
		attribute annotationTypeAttribute: (annotationInstance annotationType attributes at: i).
		self importer addEntity: attribute ]