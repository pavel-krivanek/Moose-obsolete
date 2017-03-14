*Famix-Extensions
hasMethodsAnnotatedWith: aString
	^ self methods anySatisfy: [ :each | each isAnnotatedWith: aString ]