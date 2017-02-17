tests
testNameReplacement
	| declaration |

	declaration :=
		self nodeClass
			name: 'one'
			replacement: 'two'.
	self
		assert: declaration class == self nodeClass;
		assert: declaration name = 'one';
		assert: declaration replacement = 'two'.