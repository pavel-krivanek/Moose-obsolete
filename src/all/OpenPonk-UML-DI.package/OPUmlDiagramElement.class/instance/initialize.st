initialization
initialize
	super initialize.
	isIcon := false.
	localStyle := nil.
	sharedStyle := nil.
	ownedElements := FMNullMultivalueLink
		on: self
		opposite: #owningElement:
		selector: #ownedElements.
	owningElement := nil.
	modelElement := nil.
	sourceEdges := FMNullMultivalueLink on: self opposite: #source: selector: #sourceEdges.
	targetEdges := FMNullMultivalueLink on: self opposite: #target: selector: #targetEdges