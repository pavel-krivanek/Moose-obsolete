tests
testBasic
	| t |
	t := TRVIAnimatedValue new.
	t evaluator: [ :time1 | 0 interpolateTo: 100 at: time1 ].
	self assert: t value equals: 0