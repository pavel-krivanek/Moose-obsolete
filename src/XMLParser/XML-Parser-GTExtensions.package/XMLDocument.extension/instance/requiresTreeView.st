*XML-Parser-GTExtensions
requiresTreeView
	^ self hasDoctypeDeclaration
		or: [super requiresTreeView]