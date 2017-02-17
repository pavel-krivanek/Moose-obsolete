as yet unclassified
testLabel

	| buttonPart |
	buttonPart := ButtonPart new.
	buttonPart label: 'something'.
	self assert: buttonPart label = 'something'.