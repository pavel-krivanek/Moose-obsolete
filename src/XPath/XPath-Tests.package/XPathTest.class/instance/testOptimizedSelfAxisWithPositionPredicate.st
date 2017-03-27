tests
testOptimizedSelfAxisWithPositionPredicate
	| result nodes |

	nodes := document allElementsNamed: 'person'.
	result := document xpath: '//person/self::person[1]'.
	self
		assertNodeSet: result
		hasNodes: nodes.
	result := document xpath: '//person/self::person[1.0][1]'.
	self
		assertNodeSet: result
		hasNodes: nodes.
	self
		assert: (document xpath: '//person/self::person[0]') isEmpty;
		assert: (document xpath: '//person/self::person[1.1]') isEmpty;
		assert: (document xpath: '//person/self::person[1][2]') isEmpty.

	result := document xpath: '//person/self::*[1]'.
	self
		assertNodeSet: result
		hasNodes: nodes.
	result := document xpath: '//person/self::*[1.0][1]'.
	self
		assertNodeSet: result
		hasNodes: nodes.
	self
		assert: (document xpath: '//person/self::*[0]') isEmpty;
		assert: (document xpath: '//person/self::*[1.2]') isEmpty;
		assert: (document xpath: '//person/self::*[1][2]') isEmpty.