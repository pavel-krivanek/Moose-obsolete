tests
testOptimizedFollowingAxisWithPositionPredicate
	| result following |

	following :=
		XMLNodeList with:
			(document allElementsNamed: 'address') second.
	result := document xpath: '//person[1]/following::address[1]'.
	self
		assertNodeSet: result
		hasNodes: following.
	result := document xpath: '//person[1]/following::address[1.0][1]'.
	self
		assertNodeSet: result
		hasNodes: following.
	self
		assert: (document xpath: '//person[1]/following::address[0]') isEmpty;
		assert: (document xpath: '//person[1]/following::address[1.2]') isEmpty;
		assert: (document xpath: '//person[1]/following::address[1][2]') isEmpty.

	following :=
		XMLNodeList with:
			(document allElementsNamed: 'person') second firstElement.
	result := document xpath: '//person[1]/following::*[2]'.
	self
		assertNodeSet: result
		hasNodes: following.
	result := document xpath: '//person[1]/following::*[2.0][1]'.
	self
		assertNodeSet: result
		hasNodes: following.
	self
		assert: (document xpath: '//person[1]/following::*[0]') isEmpty;
		assert: (document xpath: '//person[1]/following::*[2.2]') isEmpty;
		assert: (document xpath: '//person[1]/following::*[2][2]') isEmpty.