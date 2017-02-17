*petitgui-mondrian
viewAllParsers

	"
	PPSmalltalkParser new viewAllParsers
	"
	| view |
	view := RTMondrian new.
	self viewAllParsersOn: view.
	view openWithToolbarEntitled: 'All parsers'.
	^ view