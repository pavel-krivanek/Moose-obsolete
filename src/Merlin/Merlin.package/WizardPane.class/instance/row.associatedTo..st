addition-removal
row: aWizardPart associatedTo: aSymbol
	"use this method to add a part (using aBlockOrAPart as a WizardPart) or several parts (using aBlockOrAPart as a block ([:row | row column: aPart ; column: anotherPart]) ) to the pane, in a new row. You should always manage the layout of the pane in the same way: you decide to divide the pane in rows and for each row you can add several columns. In this case you will always use a method begining with 'way'. If you decide to divide you pane in columns, you will always use a method begining with: 'column:'. If you try another way to dispatch the parts, the order you might want will not be guaranteed "

	mainPaneLine
		ifNotNil: [ :aPaneColumn | aPaneColumn row: aWizardPart ]
		ifNil: [ mainPaneLine := PaneColumn fromPane: self.
			mainPaneLine row: aWizardPart ].

	"we now focus on the information management (made by the is wizardPane itself): "
	self setPart: aWizardPart associatedTo: aSymbol