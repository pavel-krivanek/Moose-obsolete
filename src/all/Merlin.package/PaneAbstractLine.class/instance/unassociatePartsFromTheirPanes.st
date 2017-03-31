accessing
unassociatePartsFromTheirPanes

	"when we want to remove a complete row or column, we have to also un-associat the removed wizardParts with their information"
	self subComponents do: [:aPartOrAPaneLine |
		aPartOrAPaneLine unassociatePartsFromTheirPanes. 
		]