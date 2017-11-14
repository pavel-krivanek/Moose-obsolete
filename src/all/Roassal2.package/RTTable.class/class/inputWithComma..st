as yet unclassified
inputWithComma: aString
	self assert: [ aString isString ] description: 'Please, provide a string'.
	^ self new input: aString usingDelimiter: $,