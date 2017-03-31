*XML-Parser-GTExtensions
supportsRemoveAction
	^ self hasParent
		and: [self parent isDocument not]