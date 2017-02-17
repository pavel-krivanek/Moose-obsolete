initialization
newTabSelectorMorph
	"Answer a new tab selector morph"

	^ LinkedTabSelectorMorph  new
		vResizing: #shrinkWrap;
		hResizing: #spaceFill