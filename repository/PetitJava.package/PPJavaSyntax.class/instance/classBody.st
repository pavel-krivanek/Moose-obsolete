grammar-classes
classBody 

	^ (self tokenFor: '{') , classBodyDeclaration star , (self tokenFor: '}')