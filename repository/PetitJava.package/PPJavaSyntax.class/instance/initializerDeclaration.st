grammar-classes
initializerDeclaration

	^ ((self tokenFor: 'static') optional , block)	