as yet unclassified
definedAnnotationTypes
	<MSEProperty: #definedAnnotationTypes type: #FAMIXAnnotationType opposite: #container>
	<multivalued>
	<derived>
	<MSEComment: 'The container in which the AnnotationTypes may be declared'>
	"<package: #Java>"
	
	^ self privateState attributeAt: #definedAnnotationTypes ifAbsentPut: [ FMMultivalueLink on: self opposite: #container: ]