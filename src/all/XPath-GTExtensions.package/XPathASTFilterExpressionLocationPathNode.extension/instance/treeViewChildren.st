*XPath-GTExtensions
treeViewChildren
	^ self hasSteps
		ifTrue: [self steps copyWithFirst: self expression]
		ifFalse: [super treeViewChildren]