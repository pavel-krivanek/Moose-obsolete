tests
testOptimizedDescendantAxisWithPositionPredicate
	| result descendants |

	descendants :=
		XMLNodeList with:
			(document allElementsNamed: 'person') first.
	result := document xpath: 'descendant::person[1]'.
	self
		assertNodeSet: result
		hasNodes: descendants.
	result := document xpath: 'descendant::person[1.0][1]'.
	self
		assertNodeSet: result
		hasNodes: descendants.
	self
		assert: (document xpath: 'descendant::person[0]') isEmpty;
		assert: (document xpath: 'descendant::person[1.2]') isEmpty;
		assert: (document xpath: 'descendant::person[1][2]') isEmpty.

	descendants :=
		XMLNodeList with:
			document descendantElements second.
	result := document xpath: 'descendant::*[2]'.
	self
		assertNodeSet: result
		hasNodes: descendants.
	result := document xpath: 'descendant::*[2.0][1]'.
	self
		assertNodeSet: result
		hasNodes: descendants.
	self
		assert: (document xpath: 'descendant::*[0]') isEmpty;
		assert: (document xpath: 'descendant::*[2.2]') isEmpty;
		assert: (document xpath: 'descendant::*[2][2]') isEmpty.