visitor-double dispatching
visitPragmaNode: aPragmaNode

	<todo>

	| annotationInstance annotationType |
	annotationType := self importer ensureAnnotationType: aPragmaNode.
	annotationInstance := FmxStAnnotationInstance new.
	"annotationInstance annotationType: annotationType."
	self importer addEntity: annotationInstance.
	annotationInstance annotatedEntity: self methodEntity.
	aPragmaNode arguments doWithIndex: [:each :i |
		| attribute |
		attribute := FmxStAnnotationInstanceAttribute new.
		attribute value: each value.
		attribute parentAnnotationInstance: annotationInstance.
		"attribute annotationTypeAttribute: (annotationInstance annotationType attributes at: i)."
		self importer addEntity: attribute ]