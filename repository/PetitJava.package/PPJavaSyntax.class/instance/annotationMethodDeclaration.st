grammar-annotations
annotationMethodDeclaration
	self flag: 'check whether method modifiers are the right modifiers to use'.
	
	^ methodModifiers ,
	type ,
	identifier ,
	(self tokenFor: '('), (self tokenFor: ')'),
	((self tokenFor: 'default'), elementValue ) optional ,
	(self tokenFor: ';')