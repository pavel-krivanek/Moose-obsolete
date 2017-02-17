export
fileOutMethod: aMethodReference
	self tag: 'methods' do: [
		aMethodReference realClass == Color 
			ifTrue: [ self tag: 'class-id' with: 'ColorValue' ]
			ifFalse: [ self tag: 'class-id' 
				with: (self fullyQualifiedClassNameFor: aMethodReference realClass)].
		self tag: 'category' with: (self categoryForMethod: aMethodReference).
		self fileOutMethodBody: aMethodReference.
	]