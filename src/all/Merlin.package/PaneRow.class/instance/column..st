accessing - parts
column: aBlockOrAPart

	(aBlockOrAPart isKindOf: WizardPart)
		ifTrue: [
			subComponents add:  aBlockOrAPart.
			self pane setPart: aBlockOrAPart. 
			aBlockOrAPart paneLine: self.
			].
	(aBlockOrAPart isKindOf: BlockClosure)
		ifTrue: [
			|column|
			column := PaneColumn fromPane: self pane.
			aBlockOrAPart value: column.
			subComponents add: column. 
			"partGroups add: (aBlockOrAPart value: (PaneColumn fromPane: self pane))"
			]