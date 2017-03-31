tests
testNameValue
	| attribute |

	attribute :=
		self nodeClass
			name: 'one'
			value: 'two'.
	self
		assert: attribute class == self nodeClass;
		assert: attribute name = 'one';
		assert: attribute value = 'two'.