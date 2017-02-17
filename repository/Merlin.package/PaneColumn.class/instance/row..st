accessing - parts
row: aBlockOrAPart


	(aBlockOrAPart isKindOf: WizardPart)
		ifTrue: [
			subComponents add: aBlockOrAPart.
			self pane setPart: aBlockOrAPart.
			aBlockOrAPart paneLine: self 
			].
	(aBlockOrAPart isKindOf: BlockClosure)
		ifTrue: [
			|row|
			row := (PaneRow fromPane: self pane).
			"partGroups add: (aBlockOrAPart value: (PaneRow fromPane: self pane))"
			aBlockOrAPart value: row.
			subComponents add: row
			
			].
