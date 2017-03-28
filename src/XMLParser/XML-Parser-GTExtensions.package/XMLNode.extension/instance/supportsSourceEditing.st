*XML-Parser-GTExtensions
supportsSourceEditing
	^ self hasParent
		and: [self parent isDocument not]