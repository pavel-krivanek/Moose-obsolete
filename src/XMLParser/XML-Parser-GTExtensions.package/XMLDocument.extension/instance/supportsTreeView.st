*XML-Parser-GTExtensions
supportsTreeView
	^ self hasDoctypeDeclaration
		or: [super supportsTreeView]