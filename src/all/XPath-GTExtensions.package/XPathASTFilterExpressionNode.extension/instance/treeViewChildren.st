*XPath-GTExtensions
treeViewChildren
	^ self hasPredicates
		ifTrue: [self predicates copyWithFirst: self expression]
		ifFalse: [super treeViewChildren]