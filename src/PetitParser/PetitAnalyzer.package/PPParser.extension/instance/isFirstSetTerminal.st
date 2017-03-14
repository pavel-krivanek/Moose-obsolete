*petitanalyzer-testing
isFirstSetTerminal
	"Answer true if the receiver is a terminal or leaf parser, that means it does not delegate to any other parser."

	^ self children isEmpty