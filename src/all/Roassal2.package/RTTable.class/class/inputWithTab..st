as yet unclassified
inputWithTab: aString
	self assert: [ aString isString ] description: 'Please, provide a string'.
	^ self new input: aString usingDelimiter: Character tab