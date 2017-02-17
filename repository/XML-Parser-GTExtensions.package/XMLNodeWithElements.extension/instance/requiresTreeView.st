*XML-Parser-GTExtensions
requiresTreeView
	^ self hasChildren
		and: [self nodes size > 1
			or: [self firstNode isStringNode not]]