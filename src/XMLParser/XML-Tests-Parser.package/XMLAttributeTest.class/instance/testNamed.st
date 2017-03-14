tests
testNamed
	| attribute |

	attribute := self nodeClass named: 'test'.
	self
		assert: attribute class == self nodeClass;
		assert: attribute name = 'test'.