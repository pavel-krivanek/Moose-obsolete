visiting
visitNextWith: aNodeVisitor
	| node |

	((node := self next acceptNodeVisitor: aNodeVisitor) isNil
		or: [node isNull])
		ifTrue: [^ XPathASTNullNode new]
		ifFalse: [^ previousVisited := node]