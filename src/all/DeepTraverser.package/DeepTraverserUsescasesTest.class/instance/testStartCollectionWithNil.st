tests
testStartCollectionWithNil
	self assert: ({ 1 -> { nil } } deepCollect: #value) = {  } asOrderedCollection