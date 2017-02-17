public-interaction
propagateHighlightToAll
	"Highlight all the elements that have the same model"
	mapping value do: [ :g | g @ RTHighlightable allSibblings ]