tests
testOptimizedParentAxisWithPositionPredicate
	| result parents |

	parents := document allElementsNamed: 'person'.
	result := document xpath: '//address/parent::person[1]'.
	self
		assertNodeSet: result
		hasNodes: parents.
	result := document xpath: '//address/parent::person[1.0][1]'.
	self
		assertNodeSet: result
		hasNodes: parents.
	self
		assert: (document xpath: '//address/parent::person[0]') isEmpty;
		assert: (document xpath: '//address/parent::person[1.2]') isEmpty;
		assert: (document xpath: '//address/parent::person[1][2]') isEmpty.

	result := document xpath: '//address/parent::*[1]'.
	self
		assertNodeSet: result
		hasNodes: parents.
	result := document xpath: '//address/parent::*[1.0][1]'.
	self
		assertNodeSet: result
		hasNodes: parents.
	self
		assert: (document xpath: '//address/parent::*[0]') isEmpty;
		assert: (document xpath: '//address/parent::*[1.2]') isEmpty;
		assert: (document xpath: '//address/parent::*[1][2]') isEmpty.