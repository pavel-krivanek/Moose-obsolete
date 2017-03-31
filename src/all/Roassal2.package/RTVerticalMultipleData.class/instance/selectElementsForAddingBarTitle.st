hooks
selectElementsForAddingBarTitle
	"Return the collection of principal element for each element group.  
	This principal element is used to position the title label"
	^ groupedElements collect: #last