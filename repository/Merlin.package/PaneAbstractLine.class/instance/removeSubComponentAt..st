accessing
removeSubComponentAt: anInteger
	"remove the subComponent of this this 'AbstractLine' located at the position an integer "
	"when we want to remove a complete row or column, we have to also un-associat the removed wizardParts with their information"
	| componentToRemove |
	componentToRemove := subComponents at: anInteger ifAbsent: [^ nil].
	componentToRemove unassociatePartsFromTheirPanes. 
	subComponents remove: componentToRemove. 