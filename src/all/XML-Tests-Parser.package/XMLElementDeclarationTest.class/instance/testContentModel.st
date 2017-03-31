tests
testContentModel
	| declaration |

	declaration := self newNode.
	self
		assert: declaration contentModel = '';
		assert: (declaration contentModel: '(one|two)') == declaration;
		assert: declaration contentModel = '(one|two)'.