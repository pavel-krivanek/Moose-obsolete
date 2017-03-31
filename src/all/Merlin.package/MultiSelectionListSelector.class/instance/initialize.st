initialize-release
initialize

	super initialize.
	"initialList := OrderedCollection new."
	initialListIndex := 0.
	
	selectionList := OrderedCollection new.
	selectionListSelections := Dictionary new. 
	selectionListIndex := 0.
	
	"while no item has been selected and put into the selectionList, the nextButton doesn't have to be enabled'"
	"self enableNextButton: false."