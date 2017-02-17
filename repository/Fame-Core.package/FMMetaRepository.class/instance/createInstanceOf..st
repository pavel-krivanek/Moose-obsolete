accessing
createInstanceOf: aString

	| meta |
	meta := self elementNamed: aString.
	meta isFM3Class ifFalse: [ self error: aString, ' is not a class. Can not create an instance'].
	^ meta createInstance