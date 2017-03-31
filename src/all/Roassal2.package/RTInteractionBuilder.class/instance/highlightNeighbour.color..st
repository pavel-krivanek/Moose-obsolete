public - events-registering
highlightNeighbour: aBlock color: aColorOrABlock
	self deprecated: 'Use #highlightNeighbors:color: instead'.
	"Highlight the elements for which the model is given by 'aBlock rtValue: element', where 'element' is the current element"
	interactions add: [ :element | element @ (RTHighlightable new 
																highlightedColor: aColorOrABlock; 
																highlight: aBlock) ]