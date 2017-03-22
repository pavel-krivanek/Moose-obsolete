*petitgui-mondrian
viewAllNamedParsers
	"
	PPSmalltalkParser new viewAllNamedParsers
	"
	| view |
	view := RTMondrian new.
	self viewAllNamedParsersWithSelection: {} on: view.
	^ view openWithToolbarEntitled: 'All named parsers'