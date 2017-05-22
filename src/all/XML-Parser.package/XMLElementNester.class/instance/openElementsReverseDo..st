enumerating
openElementsReverseDo: aBlock
	"implemented for XMLParserHTML so it's always safe to remove at
	the end while scanning backwards"
	self openElements size to: 1 by: -1 do: [:i |
			aBlock value: (self openElements at: i)]