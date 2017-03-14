initialize-release
update: aChange

	(self options includes: aChange) ifTrue: [
		self updateCheckboxesWhenChangesOn: aChange.   
		self hasChanged.
		self wizardPane refresh.
		] 