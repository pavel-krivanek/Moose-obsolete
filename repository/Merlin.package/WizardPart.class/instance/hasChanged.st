actions
hasChanged
	"when the output value of this wizardPart has changed, we first perform the callbak and then inform the wizardPane that a new value has been set"
	"before executing action, we make a pane refresh, to be sure that all parts composing the pane transmit their current value "
	"pay attention that here we use the NON TRANSFORMED output value"
	"self wizardPane ifNotNilDo: [:aPane | aPane refresh]."
	callbackBlock valueWithEnoughArguments: {self outputValue. self }.
	wizardPane ifNotNil: [ wizardPane  hasChanged: self].