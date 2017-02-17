*petitgui-mondrian
viewAllNamedParsers
	"
	PPSmalltalkParser new viewAllNamedParsers
	"
	| view |
	view := RTMondrianViewBuilder new.
	self viewAllNamedParsersWithSelection: {} on: view.
	^ view openWithToolbarEntitled: 'All named parsers'