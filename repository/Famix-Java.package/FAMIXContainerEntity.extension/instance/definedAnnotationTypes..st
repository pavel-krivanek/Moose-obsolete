*Famix-Java
definedAnnotationTypes: aValue
	Halt if: [ aValue class = OrderedCollection ].
	self privateState attributeAt: #definedAnnotationTypes put: aValue