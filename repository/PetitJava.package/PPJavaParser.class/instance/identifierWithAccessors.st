grammar-literals-string
identifierWithAccessors 

	^ super identifierWithAccessors ==> [:node | node second isEmpty & node third isNil ifTrue: [node first] ifFalse: [node]]