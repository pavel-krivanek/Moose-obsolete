accessing - main pane line
removeSubComponentAt: anInteger

	"when we want to remove a complete row or column, we have to also un-associat the removed wizardParts with their information"
	^ self mainPaneLine removeSubComponentAt: anInteger. 