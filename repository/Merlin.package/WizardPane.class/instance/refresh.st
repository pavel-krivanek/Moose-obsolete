updating
refresh

	(isOpen = true) ifTrue: [
		self doOpenWithoutPopulatingNonEmptyPartContents.
		self renderer refresh.
		].
	
	