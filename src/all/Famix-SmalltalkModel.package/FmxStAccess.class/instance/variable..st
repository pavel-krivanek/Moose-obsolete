initialization
variable: aStructuralEntity
	(aStructuralEntity isKindOf: FAMIXAnnotationInstanceAttribute) ifFalse: [  
	variable := aStructuralEntity]