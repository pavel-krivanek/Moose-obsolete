tests
testCommentTypeTest
	| comments |

	comments := document xPath: '//comment()'.
	self
		assert: comments size = 2;
		assert: comments = (document allNodesSelect: [:each | each isComment]);
		assert: (document xPath: '//comment()/self::comment()') = comments;
		assert: (document xPath: '//comment()/comment()') isEmpty.