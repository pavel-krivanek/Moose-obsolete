accessing
variable: aStructuralEntity
	(aStructuralEntity isKindOf: FAMIXAnnotationInstanceAttribute) ifFalse: [  
	variable := FMMultivalueLink on: self
					update: #incomingAccesses
					from: self variable
					to: aStructuralEntity]