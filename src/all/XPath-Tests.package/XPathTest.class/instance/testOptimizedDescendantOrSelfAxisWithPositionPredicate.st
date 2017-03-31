tests
testOptimizedDescendantOrSelfAxisWithPositionPredicate
	| result nodes |

	nodes :=
		XMLNodeList with:
			(document allElementsNamed: 'person') first.
	result := document xpath: 'descendant-or-self::person[1]'.
	self
		assertNodeSet: result
		hasNodes: nodes.
	result := document xpath: 'descendant-or-self::person[1.0][1]'.
	self
		assertNodeSet: result
		hasNodes: nodes.
	self
		assert: (document xpath: 'descendant-or-self::person[0]') isEmpty;
		assert: (document xpath: 'descendant-or-self::person[1.2]') isEmpty;
		assert: (document xpath: 'descendant-or-self::person[1][2]') isEmpty.

	nodes :=
		XMLNodeList with:
			document allElements second.
	result := document xpath: 'descendant-or-self::*[2]'.
	self
		assertNodeSet: result
		hasNodes: nodes.
	result := document xpath: 'descendant-or-self::*[2.0][1]'.
	self
		assertNodeSet: result
		hasNodes: nodes.
	self
		assert: (document xpath: 'descendant-or-self::*[0]') isEmpty;
		assert: (document xpath: 'descendant-or-self::*[2.2]') isEmpty;
		assert: (document xpath: 'descendant-or-self::*[2][2]') isEmpty.