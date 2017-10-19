initialization
initializeWidgets
	tree := self newList.
	tree menu: [ :aMenu |
		self contextMenu].
	self focusOrder add: tree