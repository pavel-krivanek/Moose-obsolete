addition-removal
column: aBlockOrAPart
	mainPaneLine
		ifNotNil: [ :aPaneRow | aPaneRow column: aBlockOrAPart ]
		ifNil: [ mainPaneLine := PaneRow fromPane: self.
			mainPaneLine column: aBlockOrAPart ]