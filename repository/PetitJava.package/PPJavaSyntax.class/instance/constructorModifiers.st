grammar-classes-method
constructorModifiers 

	^ ((self tokenFor: 'protected')
		/ (self tokenFor: 'private')
		/ (self tokenFor: 'public')
		/ annotation) plus