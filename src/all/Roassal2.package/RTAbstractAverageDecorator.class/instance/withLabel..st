accessing
withLabel: aBlockOrSymbol
	"This method is used to set how to convert the decorator's value.
	Take as argument the decorator's value, as a number and the block has to return a value or a string"

	self withLabel.
	labelBlock := aBlockOrSymbol