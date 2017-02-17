addition / removal
removePaneAt: anIndex

	|tmpPane|
	self wizardPanes size < anIndex ifTrue: [
		^ Error signal: 'Trying to remove a non-existant pane'
		].
	tmpPane := self wizardPanes at: anIndex.
	^ self wizardPanes remove: tmpPane.
	
	