public-interaction
propagateHighlightUsing: aBlock
	"Highlight all the elements return by aBlock. 
	 The aBlock variable is evaluated for a Roassal element"
	mapping value do: [ :g | g @ (RTHighlightable new highlightElements: aBlock) ]