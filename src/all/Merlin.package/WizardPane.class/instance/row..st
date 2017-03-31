addition-removal
row: aBlockOrAPart

	"use this method to add a part (using aBlockOrAPart as a WizardPart) or several parts (using aBlockOrAPart as a block ([:row | row column: aPart ; column: anotherPart]) ) to the pane, in a new row. You should always manage the layout of the pane in the same way: you decide to divide the pane in rows and for each row you can add several columns. In this case you will always use methods begining with 'row'. If you decide to divide your pane in columns, you will always use methods begining with: 'column:'. If you try another way to dispatch the parts, the order you  want might not be guaranteed "
	mainPaneLine 
		ifNotNil: [:aPaneColumn |
			aPaneColumn row: aBlockOrAPart 
			]  
		ifNil: [
			mainPaneLine := PaneColumn fromPane: self.
			mainPaneLine row: aBlockOrAPart 
			].
		
	
		
	
