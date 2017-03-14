accessing
controllingElements: listOfElementsOrOneArgBlock
	"Argument can be a OneArgBlock (taking an edge as argument) or directly a list of elements"
	"NOTE: controlling elements are retreived when the edge is created, which may not be already added to the view. This means that the argument should not try to access the view from the edge directly"
	controllingElements := listOfElementsOrOneArgBlock