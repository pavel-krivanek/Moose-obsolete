initialization
initializeWidgets
	(searchInput := self newTextInput)
		autoAccept: true;
		entryCompletion: nil;
		ghostText: 'Search'.
	(addEntryButton := self newButton) label: 'New Entry'.
	(entriesList := self newTree)
		autoDeselection: false;
		whenBuiltDo: [ :e | entriesList expandAll ].
	self focusOrder
		add: searchInput;
		add: addEntryButton;
		add: entriesList