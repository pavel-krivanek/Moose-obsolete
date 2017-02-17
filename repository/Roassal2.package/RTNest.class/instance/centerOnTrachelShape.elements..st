public
centerOnTrachelShape: trachelShape elements: elements
	"Public method. This method does the following actions:
		- resize the backElement to encompasse all the elements
		- translate all the elements on top of backElement
		- perform a layout if one is set"

	behavior centerOnTrachelShape: trachelShape elements: elements asGroup.
