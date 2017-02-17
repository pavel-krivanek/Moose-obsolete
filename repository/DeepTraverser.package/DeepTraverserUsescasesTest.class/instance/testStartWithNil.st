tests
testStartWithNil
	self assert: ({ 1 . nil } withDeepCollect: [ :each | each  ]) = { 1 } asOrderedCollection