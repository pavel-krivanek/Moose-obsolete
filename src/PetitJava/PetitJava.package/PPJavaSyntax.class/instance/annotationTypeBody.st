grammar-annotations
annotationTypeBody

	^ (self tokenFor: '{')  ,
	(annotationTypeElementDeclaration star),
	(self tokenFor: '}')