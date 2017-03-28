*XML-Parser-GTExtensions
supportsTreeView
	^ self hasChildren
		and: [self nodes anySatisfy: [:each | each isStringNode not]]