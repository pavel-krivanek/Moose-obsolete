event handling
whenDropListChanged: aDropList select: aRadio
	aDropList
		whenSelectionChanged: [ aRadio state
				ifFalse: [ aRadio toggleState ] ]