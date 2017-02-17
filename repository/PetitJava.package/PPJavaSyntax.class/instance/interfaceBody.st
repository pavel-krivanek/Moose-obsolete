grammar-classes-interface
interfaceBody

	^ (self tokenFor: '{') , interfaceBodyDeclaration star , (self tokenFor: '}')