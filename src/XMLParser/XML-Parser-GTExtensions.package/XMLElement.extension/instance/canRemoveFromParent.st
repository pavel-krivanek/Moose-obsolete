*XML-Parser-GTExtensions
canRemoveFromParent
	^ self hasParent
		and: [self parent isDocument not]