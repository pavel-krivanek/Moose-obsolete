as yet unclassified
testEnableAndDisable

	| buttonPart |
	buttonPart := ButtonPart new.
	buttonPart enable.
	self assert: buttonPart buttonEnabled.
	buttonPart disable.
	self deny: buttonPart buttonEnabled.