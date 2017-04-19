initialization
initializeElement: aView
	| string |
	view := aView.
	view
		addMenu: 'Highlight'
		callback: [ string := self askForPattern.
			string ifNotNil:
				[ self highlightElementsUsing: string ] ]