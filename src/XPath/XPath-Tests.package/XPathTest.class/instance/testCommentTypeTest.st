tests
testCommentTypeTest
	| comments |

	comments := document allNodesSelect: [:each | each isComment].
	self
		assertNodeSet: (document xpath: '//comment()')
		hasNodes: comments.
	self
		assertNodeSet: (document xpath: '//comment()/self::comment()')
		hasNodes: comments.
	self assert: (document xpath: '//comment()/comment()') isEmpty.