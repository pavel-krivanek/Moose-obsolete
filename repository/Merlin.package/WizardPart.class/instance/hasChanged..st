actions
hasChanged: aValue
	"when the output value of this wizardPart has changed, we first perform the callbak and then inform the wizardPane that a new value has been set"
	callbackBlock valueWithEnoughArguments: {aValue. self }.
	wizardPane ifNotNil: [ wizardPane  hasChanged: self].