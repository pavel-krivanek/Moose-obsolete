tests
testElementContentModel
	| declaration |

	declaration :=
		self nodeClass
			element: 'one'
			contentModel: '(two|three)'.
	self
		assert: declaration class == self nodeClass;
		assert: declaration element = 'one';
		assert: declaration contentModel = '(two|three)'