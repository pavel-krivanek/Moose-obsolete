tests
testOptimizedPrecedingAxisWithPositionPredicate
	| result preceding |

	preceding :=
		XMLNodeList with:
			(document allElementsNamed: 'address') first.
	result := document xpath: '//person[2]/preceding::address[1]'.
	self
		assertNodeSet: result
		hasNodes: preceding.
	result := document xpath: '//person[2]/preceding::address[1.0][1]'.
	self
		assertNodeSet: result
		hasNodes: preceding.
	self
		assert: (document xpath: '//person[2]/preceding::address[0]') isEmpty;
		assert: (document xpath: '//person[2]/preceding::address[1.2]') isEmpty;
		assert: (document xpath: '//person[2]/preceding::address[1][2]') isEmpty.

	preceding :=
		XMLNodeList with:
			(document allElementsNamed: 'person')
				first allElements reversed second.
	result := document xpath: '//person[2]/preceding::*[2]'.
	self
		assertNodeSet: result
		hasNodes: preceding.
	result := document xpath: '//person[2]/preceding::*[2.0][1]'.
	self
		assertNodeSet: result
		hasNodes: preceding.
	self
		assert: (document xpath: '//person[2]/preceding::*[0]') isEmpty;
		assert: (document xpath: '//person[2]/preceding::*[2.2]') isEmpty;
		assert: (document xpath: '//person[2]/preceding::*[2][2]') isEmpty.